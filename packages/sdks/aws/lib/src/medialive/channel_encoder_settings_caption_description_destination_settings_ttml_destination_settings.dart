// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings {
  /// Whether to include style information when writing the TTML captions. This field is not currently supported and does not affect the output styling. Leave the default value.
  final pulumi.Input<String> styleControl;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings].
  /// [styleControl] Whether to include style information when writing the TTML captions. This field is not currently supported and does not affect the output styling. Leave the default value.
  const ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings({
    required this.styleControl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'styleControl': styleControl,
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings(
      styleControl: pulumi.Input.fromValue(map['styleControl'] as String),
    );
  }
}
