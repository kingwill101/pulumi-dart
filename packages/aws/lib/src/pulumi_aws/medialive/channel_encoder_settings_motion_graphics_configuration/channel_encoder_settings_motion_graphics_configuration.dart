// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_motion_graphics_configuration_motion_graphics_settings/channel_encoder_settings_motion_graphics_configuration_motion_graphics_settings.dart';

class ChannelEncoderSettingsMotionGraphicsConfiguration {
  /// Motion Graphics Insertion.
  final String? motionGraphicsInsertion;

  /// Motion Graphics Settings. See Motion Graphics Settings for more details.
  final ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings
      motionGraphicsSettings;

  ChannelEncoderSettingsMotionGraphicsConfiguration({
    this.motionGraphicsInsertion,
    required this.motionGraphicsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final motionGraphicsInsertionValue = motionGraphicsInsertion;
    if (motionGraphicsInsertionValue != null) {
      map['motionGraphicsInsertion'] = motionGraphicsInsertionValue;
    }
    map['motionGraphicsSettings'] = motionGraphicsSettings.toMap();
    return map;
  }

  factory ChannelEncoderSettingsMotionGraphicsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsMotionGraphicsConfiguration(
      motionGraphicsInsertion: map['motionGraphicsInsertion'] == null
          ? null
          : map['motionGraphicsInsertion'] as String,
      motionGraphicsSettings:
          ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings
              .fromMap((map['motionGraphicsSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
