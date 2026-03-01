// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings {
  /// This field is not currently supported and will not affect the output styling. Leave the default value.
  final String styleControl;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings].
  /// [styleControl] This field is not currently supported and will not affect the output styling. Leave the default value.
  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings({
    required this.styleControl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'styleControl': styleControl};
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings(
      styleControl: map['styleControl'] as String,
    );
  }
}
