// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_motion_graphics_configuration_motion_graphics_settings.dart';

class ChannelEncoderSettingsMotionGraphicsConfiguration {
  /// Whether to activate motion graphics insertion.
  final pulumi.Input<String?>? motionGraphicsInsertion;
  /// Motion graphics settings. See `motionGraphicsSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings> motionGraphicsSettings;

  /// Creates a new [ChannelEncoderSettingsMotionGraphicsConfiguration].
  /// [motionGraphicsInsertion] Whether to activate motion graphics insertion.
  /// [motionGraphicsSettings] Motion graphics settings. See `motionGraphicsSettings` Block for details.
  const ChannelEncoderSettingsMotionGraphicsConfiguration({
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
      motionGraphicsInsertion: (() { final guardedValue = map['motionGraphicsInsertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      motionGraphicsSettings: pulumi.Input.fromValue(ChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings.fromMap((map['motionGraphicsSettings']! as Map).cast<String, dynamic>())),
    );
  }
}
