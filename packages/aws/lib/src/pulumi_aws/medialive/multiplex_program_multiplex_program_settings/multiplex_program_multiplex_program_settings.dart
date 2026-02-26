// ignore_for_file: unused_element, unnecessary_cast

import '../multiplex_program_multiplex_program_settings_service_descriptor/multiplex_program_multiplex_program_settings_service_descriptor.dart';
import '../multiplex_program_multiplex_program_settings_video_settings/multiplex_program_multiplex_program_settings_video_settings.dart';

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

  MultiplexProgramMultiplexProgramSettings({
    required this.preferredChannelPipeline,
    required this.programNumber,
    this.serviceDescriptor,
    this.videoSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preferredChannelPipeline'] = preferredChannelPipeline;
    map['programNumber'] = programNumber;
    final serviceDescriptorValue = serviceDescriptor;
    if (serviceDescriptorValue != null) {
      map['serviceDescriptor'] = serviceDescriptorValue.toMap();
    }
    final videoSettingsValue = videoSettings;
    if (videoSettingsValue != null) {
      map['videoSettings'] = videoSettingsValue.toMap();
    }
    return map;
  }

  factory MultiplexProgramMultiplexProgramSettings.fromMap(
      Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettings(
      preferredChannelPipeline: map['preferredChannelPipeline'] as String,
      programNumber: map['programNumber'] as int,
      serviceDescriptor: map['serviceDescriptor'] == null
          ? null
          : MultiplexProgramMultiplexProgramSettingsServiceDescriptor.fromMap(
              (map['serviceDescriptor'] as Map).cast<String, dynamic>()),
      videoSettings: map['videoSettings'] == null
          ? null
          : MultiplexProgramMultiplexProgramSettingsVideoSettings.fromMap(
              (map['videoSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
