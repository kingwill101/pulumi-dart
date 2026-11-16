// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_override_configuration_video_modality_processing.dart';
import 'project_override_configuration_video_sensitive_data_configuration.dart';

class ProjectOverrideConfigurationVideo {
  /// Whether to process video files. See `modalityProcessing` Block below.
  final pulumi.Input<ProjectOverrideConfigurationVideoModalityProcessing?>? modalityProcessing;
  /// Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfigurationVideoSensitiveDataConfiguration?>? sensitiveDataConfiguration;

  /// Creates a new [ProjectOverrideConfigurationVideo].
  /// [modalityProcessing] Whether to process video files. See `modalityProcessing` Block below.
  /// [sensitiveDataConfiguration] Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  const ProjectOverrideConfigurationVideo({
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modalityProcessing': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationVideoModalityProcessing, Map<String, dynamic>>(modalityProcessing, (value) => value.toMap()),
      'sensitiveDataConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationVideoSensitiveDataConfiguration, Map<String, dynamic>>(sensitiveDataConfiguration, (value) => value.toMap()),
    };
  }

  factory ProjectOverrideConfigurationVideo.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationVideo(
      modalityProcessing: (() { final guardedValue = map['modalityProcessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationVideoModalityProcessing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitiveDataConfiguration: (() { final guardedValue = map['sensitiveDataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationVideoSensitiveDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
