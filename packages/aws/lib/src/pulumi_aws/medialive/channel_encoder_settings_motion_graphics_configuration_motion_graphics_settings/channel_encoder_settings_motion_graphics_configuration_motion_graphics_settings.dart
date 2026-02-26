// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings {
  /// Html Motion Graphics Settings.
  final Map<String, dynamic>? htmlMotionGraphicsSettings;

  ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings({
    this.htmlMotionGraphicsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final htmlMotionGraphicsSettingsValue = htmlMotionGraphicsSettings;
    if (htmlMotionGraphicsSettingsValue != null) {
      map['htmlMotionGraphicsSettings'] = htmlMotionGraphicsSettingsValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings(
      htmlMotionGraphicsSettings: map['htmlMotionGraphicsSettings'] == null
          ? null
          : (map['htmlMotionGraphicsSettings'] as Map).cast<String, dynamic>(),
    );
  }
}
