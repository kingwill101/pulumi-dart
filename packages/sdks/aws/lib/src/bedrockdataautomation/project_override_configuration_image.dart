// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_override_configuration_image_modality_processing.dart';
import 'project_override_configuration_image_sensitive_data_configuration.dart';

class ProjectOverrideConfigurationImage {
  /// Whether to process video files. See `modalityProcessing` Block below.
  final pulumi.Input<ProjectOverrideConfigurationImageModalityProcessing?>? modalityProcessing;
  /// Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfigurationImageSensitiveDataConfiguration?>? sensitiveDataConfiguration;

  /// Creates a new [ProjectOverrideConfigurationImage].
  /// [modalityProcessing] Whether to process video files. See `modalityProcessing` Block below.
  /// [sensitiveDataConfiguration] Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  const ProjectOverrideConfigurationImage({
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modalityProcessing': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationImageModalityProcessing, Map<String, dynamic>>(modalityProcessing, (value) => value.toMap()),
      'sensitiveDataConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationImageSensitiveDataConfiguration, Map<String, dynamic>>(sensitiveDataConfiguration, (value) => value.toMap()),
    };
  }

  factory ProjectOverrideConfigurationImage.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationImage(
      modalityProcessing: (() { final guardedValue = map['modalityProcessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationImageModalityProcessing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitiveDataConfiguration: (() { final guardedValue = map['sensitiveDataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationImageSensitiveDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
