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
  ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings({
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
      bitDepth: map['bitDepth'] == null ? null : ((map['bitDepth'] as double).input()).input(),
      codingMode: map['codingMode'] == null ? null : ((map['codingMode'] as String).input()).input(),
      sampleRate: map['sampleRate'] == null ? null : ((map['sampleRate'] as double).input()).input(),
    );
  }
}

