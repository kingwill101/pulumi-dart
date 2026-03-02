// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_program_multiplex_program_settings_service_descriptor.dart';
import 'multiplex_program_multiplex_program_settings_video_settings.dart';

class MultiplexProgramMultiplexProgramSettings {
  /// Enum for preferred channel pipeline. Options are `CURRENTLY_ACTIVE`, `PIPELINE_0`, or `PIPELINE_1`.
  final pulumi.Input<String> preferredChannelPipeline;
  /// Unique program number.
  final pulumi.Input<int> programNumber;
  /// Service Descriptor. See Service Descriptor for more details.
  final pulumi.Input<MultiplexProgramMultiplexProgramSettingsServiceDescriptor>? serviceDescriptor;
  /// Video settings. See Video Settings for more details.
  final pulumi.Input<MultiplexProgramMultiplexProgramSettingsVideoSettings>? videoSettings;

  /// Creates a new [MultiplexProgramMultiplexProgramSettings].
  /// [preferredChannelPipeline] Enum for preferred channel pipeline. Options are `CURRENTLY_ACTIVE`, `PIPELINE_0`, or `PIPELINE_1`.
  /// [programNumber] Unique program number.
  /// [serviceDescriptor] Service Descriptor. See Service Descriptor for more details.
  /// [videoSettings] Video settings. See Video Settings for more details.
  MultiplexProgramMultiplexProgramSettings({
    required this.preferredChannelPipeline,
    required this.programNumber,
    this.serviceDescriptor,
    this.videoSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredChannelPipeline': preferredChannelPipeline,
      'programNumber': programNumber,
      'serviceDescriptor': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramMultiplexProgramSettingsServiceDescriptor, Map<String, dynamic>>(serviceDescriptor, (value) => value.toMap()),
      'videoSettings': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramMultiplexProgramSettingsVideoSettings, Map<String, dynamic>>(videoSettings, (value) => value.toMap()),
    };
  }

  factory MultiplexProgramMultiplexProgramSettings.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettings(
      preferredChannelPipeline: (map['preferredChannelPipeline'] as String).input(),
      programNumber: (map['programNumber'] as int).input(),
      serviceDescriptor: map['serviceDescriptor'] == null ? null : ((MultiplexProgramMultiplexProgramSettingsServiceDescriptor.fromMap((map['serviceDescriptor']! as Map).cast<String, dynamic>())).input()).input(),
      videoSettings: map['videoSettings'] == null ? null : ((MultiplexProgramMultiplexProgramSettingsVideoSettings.fromMap((map['videoSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

