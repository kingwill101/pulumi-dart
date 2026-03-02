// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_motion_graphics_configuration_motion_graphics_settings.dart';

class ChannelEncoderSettingsMotionGraphicsConfiguration {
  /// Motion Graphics Insertion.
  final pulumi.Input<String>? motionGraphicsInsertion;
  /// Motion Graphics Settings. See Motion Graphics Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings> motionGraphicsSettings;

  /// Creates a new [ChannelEncoderSettingsMotionGraphicsConfiguration].
  /// [motionGraphicsInsertion] Motion Graphics Insertion.
  /// [motionGraphicsSettings] Motion Graphics Settings. See Motion Graphics Settings for more details.
  ChannelEncoderSettingsMotionGraphicsConfiguration({
    this.motionGraphicsInsertion,
    required this.motionGraphicsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'motionGraphicsInsertion': ?motionGraphicsInsertion,
      'motionGraphicsSettings': pulumi.Input.mapInputValue<ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings, Map<String, dynamic>>(motionGraphicsSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsMotionGraphicsConfiguration.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsMotionGraphicsConfiguration(
      motionGraphicsInsertion: map['motionGraphicsInsertion'] == null ? null : (map['motionGraphicsInsertion'] as String).input(),
      motionGraphicsSettings: (ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings.fromMap((map['motionGraphicsSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

