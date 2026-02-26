// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings {
  /// The frequency at which to capture frames for inclusion in the output.
  final int? captureInterval;

  /// Unit for the frame capture interval.
  final String? captureIntervalUnits;

  ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings({
    this.captureInterval,
    this.captureIntervalUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final captureIntervalValue = captureInterval;
    if (captureIntervalValue != null) {
      map['captureInterval'] = captureIntervalValue;
    }
    final captureIntervalUnitsValue = captureIntervalUnits;
    if (captureIntervalUnitsValue != null) {
      map['captureIntervalUnits'] = captureIntervalUnitsValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings(
      captureInterval:
          map['captureInterval'] == null ? null : map['captureInterval'] as int,
      captureIntervalUnits: map['captureIntervalUnits'] == null
          ? null
          : map['captureIntervalUnits'] as String,
    );
  }
}
