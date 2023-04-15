import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    Xylophone(
      home: Scaffold(),
    ),
  );
}

class Xylophone extends StatelessWidget {
  Xylophone({super.key, required Scaffold home});

  void playSound(int keyNum) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$keyNum.wav'));
  }

  Expanded playButton(Color keyColor, int keyNum) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Container(
          color: keyColor,
        ),
        onPressed: () {
          playSound(keyNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playButton(Colors.red.shade700, 1),
              playButton(Colors.orange.shade700, 2),
              playButton(Colors.yellow.shade700, 3),
              playButton(Colors.green.shade700, 4),
              playButton(Colors.blue.shade700, 5),
              playButton(Colors.indigo.shade700, 6),
              playButton(Colors.deepPurple.shade700, 7),
            ],
          ),
        ),
      ),
    );
  }
}
