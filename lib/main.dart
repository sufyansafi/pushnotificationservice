import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pushnotificationservice/localnotify.dart';

import 'homescreen.dart';

// import 'package:overlay_support/overlay_support.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  // print(message.data.toString());
  // print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  LocalNotification.initialize;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Future<FirebaseApp> pushapp = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: FutureBuilder(
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       print("yiu hva an error ${snapshot.error.toString()}");
      //       return Text("something get wrong");
      //     } else if (snapshot.hasData) {
      //       return Homescreen();
      //     } else {
      //       return Center(
      //       child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      //   future: pushapp,
      // ),
      home: const Homescreen(),
    );
  }
}
