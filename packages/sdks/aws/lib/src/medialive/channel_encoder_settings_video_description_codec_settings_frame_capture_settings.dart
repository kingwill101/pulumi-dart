// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings {
  /// The frequency at which to capture frames for inclusion in the output.
  final pulumi.Input<int>? captureInterval;
  /// Unit for the frame capture interval.
  final pulumi.Input<String>? captureIntervalUnits;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings].
  /// [captureInterval] The frequency at which to capture frames for inclusion in the output.
  /// [captureIntervalUnits] Unit for the frame capture interval.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings({
    this.captureInterval,
    this.captureIntervalUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureInterval': ?captureInterval,
      'captureIntervalUnits': ?captureIntervalUnits,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings(
      captureInterval: (() { final guardedValue = map['captureInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      captureIntervalUnits: (() { final guardedValue = map['captureIntervalUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

