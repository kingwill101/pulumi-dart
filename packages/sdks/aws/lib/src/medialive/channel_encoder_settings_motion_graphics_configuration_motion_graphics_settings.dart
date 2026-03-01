// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings {
  /// Html Motion Graphics Settings.
  final Map<String, dynamic>? htmlMotionGraphicsSettings;

  /// Creates a new [ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings].
  /// [htmlMotionGraphicsSettings] Html Motion Graphics Settings.
  ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings({
    this.htmlMotionGraphicsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'htmlMotionGraphicsSettings': ?htmlMotionGraphicsSettings,
    };
  }

  factory ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings(
      htmlMotionGraphicsSettings: map['htmlMotionGraphicsSettings'] == null ? null : (map['htmlMotionGraphicsSettings'] as Map).cast<String, dynamic>(),
    );
  }
}

