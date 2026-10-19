// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings {
  /// Whether the color and position of the source captions is passed through to the WebVTT output captions. `PASSTHROUGH` is valid only if the source captions are EMBEDDED or TELETEXT. `NO_STYLE_DATA` does not pass through the style, and the output captions do not contain any font styling information.
  final pulumi.Input<String> styleControl;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings].
  /// [styleControl] Whether the color and position of the source captions is passed through to the WebVTT output captions. `PASSTHROUGH` is valid only if the source captions are EMBEDDED or TELETEXT. `NO_STYLE_DATA` does not pass through the style, and the output captions do not contain any font styling information.
  const ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings({
    required this.styleControl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'styleControl': styleControl,
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings(
      styleControl: pulumi.Input.fromValue(map['styleControl'] as String),
    );
  }
}
