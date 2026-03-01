// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings {
  /// The frequency at which to capture frames for inclusion in the output.
  final int? captureInterval;
  /// Unit for the frame capture interval.
  final String? captureIntervalUnits;

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
      captureInterval: map['captureInterval'] == null ? null : map['captureInterval'] as int,
      captureIntervalUnits: map['captureIntervalUnits'] == null ? null : map['captureIntervalUnits'] as String,
    );
  }
}

