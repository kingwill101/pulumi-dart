// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_override_configuration_audio_sensitive_data_configuration_pii_entities_configuration.dart';

class ProjectOverrideConfigurationAudioSensitiveDataConfiguration {
  /// Whether to detect or detect and redact sensitive data. Valid values: `DETECTION`, `DETECTION_AND_REDACTION`.
  final pulumi.Input<String> detectionMode;
  /// Set of outputs to scan for sensitive data. Valid values: `STANDARD`, `CUSTOM`.
  final pulumi.Input<List<String>?>? detectionScopes;
  /// PII entity settings. See `piiEntitiesConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfigurationAudioSensitiveDataConfigurationPiiEntitiesConfiguration?>? piiEntitiesConfiguration;

  /// Creates a new [ProjectOverrideConfigurationAudioSensitiveDataConfiguration].
  /// [detectionMode] Whether to detect or detect and redact sensitive data. Valid values: `DETECTION`, `DETECTION_AND_REDACTION`.
  /// [detectionScopes] Set of outputs to scan for sensitive data. Valid values: `STANDARD`, `CUSTOM`.
  /// [piiEntitiesConfiguration] PII entity settings. See `piiEntitiesConfiguration` Block below.
  const ProjectOverrideConfigurationAudioSensitiveDataConfiguration({
    required this.detectionMode,
    this.detectionScopes,
    this.piiEntitiesConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectionMode': detectionMode,
      'detectionScopes': ?detectionScopes,
      'piiEntitiesConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationAudioSensitiveDataConfigurationPiiEntitiesConfiguration, Map<String, dynamic>>(piiEntitiesConfiguration, (value) => value.toMap()),
    };
  }

  factory ProjectOverrideConfigurationAudioSensitiveDataConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationAudioSensitiveDataConfiguration(
      detectionMode: pulumi.Input.fromValue(map['detectionMode'] as String),
      detectionScopes: (() { final guardedValue = map['detectionScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      piiEntitiesConfiguration: (() { final guardedValue = map['piiEntitiesConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationAudioSensitiveDataConfigurationPiiEntitiesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
