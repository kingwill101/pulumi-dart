// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings {
  final pulumi.Input<double>? bitrate;
  final pulumi.Input<String>? codingMode;
  /// Sample rate in Hz.
  final pulumi.Input<double>? sampleRate;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings].
  /// [bitrate] Optional.
  /// [codingMode] Optional.
  /// [sampleRate] Sample rate in Hz.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings({
    this.bitrate,
    this.codingMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrate': ?bitrate,
      'codingMode': ?codingMode,
      'sampleRate': ?sampleRate,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings(
      bitrate: map['bitrate'] == null ? null : ((map['bitrate'] as double).input()).input(),
      codingMode: map['codingMode'] == null ? null : ((map['codingMode'] as String).input()).input(),
      sampleRate: map['sampleRate'] == null ? null : ((map['sampleRate'] as double).input()).input(),
    );
  }
}

