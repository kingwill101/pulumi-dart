// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings {
  /// Controls whether the color and position of the source captions is passed through to the WebVTT output captions. PASSTHROUGH - Valid only if the source captions are EMBEDDED or TELETEXT. NO\_STYLE\_DATA - Don’t pass through the style. The output captions will not contain any font styling information.
  final String styleControl;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings].
  /// [styleControl] Controls whether the color and position of the source captions is passed through to the WebVTT output captions. PASSTHROUGH - Valid only if the source captions are EMBEDDED or TELETEXT. NO\_STYLE\_DATA - Don’t pass through the style. The output captions will not contain any font styling information.
  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings({
    required this.styleControl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'styleControl': styleControl};
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings(
      styleControl: map['styleControl'] as String,
    );
  }
}
