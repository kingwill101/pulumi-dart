// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PresetAudio {
  /// The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack.
  final pulumi.Input<String?>? audioPackingMode;
  /// The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.
  final pulumi.Input<String?>? bitRate;
  /// The number of audio channels in the output file
  final pulumi.Input<String?>? channels;
  /// The audio codec for the output file. Valid values are `AAC`, `flac`, `mp2`, `mp3`, `pcm`, and `vorbis`.
  final pulumi.Input<String?>? codec;
  /// The sample rate of the audio stream in the output file, in hertz. Valid values are: `auto`, `22050`, `32000`, `44100`, `48000`, `96000`
  final pulumi.Input<String?>? sampleRate;

  /// Creates a new [PresetAudio].
  /// [audioPackingMode] The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack.
  /// [bitRate] The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.
  /// [channels] The number of audio channels in the output file
  /// [codec] The audio codec for the output file. Valid values are `AAC`, `flac`, `mp2`, `mp3`, `pcm`, and `vorbis`.
  /// [sampleRate] The sample rate of the audio stream in the output file, in hertz. Valid values are: `auto`, `22050`, `32000`, `44100`, `48000`, `96000`
  const PresetAudio({
    this.audioPackingMode,
    this.bitRate,
    this.channels,
    this.codec,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioPackingMode': ?audioPackingMode,
      'bitRate': ?bitRate,
      'channels': ?channels,
      'codec': ?codec,
      'sampleRate': ?sampleRate,
    };
  }

  factory PresetAudio.fromMap(Map<String, dynamic> map) {
    return PresetAudio(
      audioPackingMode: (() { final guardedValue = map['audioPackingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitRate: (() { final guardedValue = map['bitRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channels: (() { final guardedValue = map['channels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codec: (() { final guardedValue = map['codec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
