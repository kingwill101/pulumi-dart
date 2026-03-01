// ignore_for_file: unused_element, unnecessary_cast

import 'multiplex_program_multiplex_program_settings_service_descriptor.dart';
import 'multiplex_program_multiplex_program_settings_video_settings.dart';

class MultiplexProgramMultiplexProgramSettings {
  /// Enum for preferred channel pipeline. Options are `CURRENTLY_ACTIVE`, `PIPELINE_0`, or `PIPELINE_1`.
  final String preferredChannelPipeline;

  /// Unique program number.
  final int programNumber;

  /// Service Descriptor. See Service Descriptor for more details.
  final MultiplexProgramMultiplexProgramSettingsServiceDescriptor?
  serviceDescriptor;

  /// Video settings. See Video Settings for more details.
  final MultiplexProgramMultiplexProgramSettingsVideoSettings? videoSettings;

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
      'serviceDescriptor': ?serviceDescriptor == null
          ? null
          : serviceDescriptor!.toMap(),
      'videoSettings': ?videoSettings == null ? null : videoSettings!.toMap(),
    };
  }

  factory MultiplexProgramMultiplexProgramSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultiplexProgramMultiplexProgramSettings(
      preferredChannelPipeline: map['preferredChannelPipeline'] as String,
      programNumber: map['programNumber'] as int,
      serviceDescriptor: map['serviceDescriptor'] == null
          ? null
          : MultiplexProgramMultiplexProgramSettingsServiceDescriptor.fromMap(
              (map['serviceDescriptor'] as Map).cast<String, dynamic>(),
            ),
      videoSettings: map['videoSettings'] == null
          ? null
          : MultiplexProgramMultiplexProgramSettingsVideoSettings.fromMap(
              (map['videoSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
