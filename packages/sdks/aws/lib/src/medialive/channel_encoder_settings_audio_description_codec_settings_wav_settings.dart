// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings {
  final pulumi.Input<double>? bitDepth;
  final pulumi.Input<String>? codingMode;
  /// Sample rate in Hz.
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings].
  /// [bitDepth] Optional.
  /// [codingMode] Optional.
  /// [sampleRate] Sample rate in Hz.
  const ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings({
    this.bitDepth,
    this.codingMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitDepth': ?bitDepth,
      'codingMode': ?codingMode,
      'sampleRate': ?sampleRate,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings(
      bitDepth: (() { final guardedValue = map['bitDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      codingMode: (() { final guardedValue = map['codingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

