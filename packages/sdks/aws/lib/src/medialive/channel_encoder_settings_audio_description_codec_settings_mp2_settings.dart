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
  const ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings({
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
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      codingMode: (() { final guardedValue = map['codingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
