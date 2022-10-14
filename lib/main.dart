import 'package:flutter/material.dart';

import 'package:progressive_image/progressive_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Progressive image',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
    home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.grey[700],
        title: Center(child: Text('Progressive Image')),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey),
          child: ProgressiveImage(
              fit: BoxFit.cover,
             repeat: ImageRepeat.repeat,
              fadeDuration: Duration(milliseconds: 1500),
              placeholder: AssetImage('asset/black1.jpg'),
              thumbnail: NetworkImage(
                  'https://i.imgur.com/7XL923M.jpg'),
              image: NetworkImage(
                  'https://i.imgur.com/xVS07vQ.jpg'),
              width: 500,
              height: 300),
        ),
      ),
      
    );
  }
}