// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings {
  /// Html Motion Graphics Settings.
  final pulumi.Input<Map<String, dynamic>>? htmlMotionGraphicsSettings;

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

  factory ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings(
      htmlMotionGraphicsSettings: (() {
        final guardedValue = map['htmlMotionGraphicsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
