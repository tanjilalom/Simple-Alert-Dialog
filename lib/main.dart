import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Alert Dialog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text("ALERT"),
              content: Text("You Are Hacked"),
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("ok"))
              ],
            );
          });
        }, child: Text("Press ME"))
      ),
    );
  }
}
