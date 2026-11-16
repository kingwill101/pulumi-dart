// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_override_configuration_audio_language_configuration.dart';
import 'project_override_configuration_audio_modality_processing.dart';
import 'project_override_configuration_audio_sensitive_data_configuration.dart';

class ProjectOverrideConfigurationAudio {
  /// Language settings. See `languageConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfigurationAudioLanguageConfiguration?>? languageConfiguration;
  /// Whether to process video files. See `modalityProcessing` Block below.
  final pulumi.Input<ProjectOverrideConfigurationAudioModalityProcessing?>? modalityProcessing;
  /// Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfigurationAudioSensitiveDataConfiguration?>? sensitiveDataConfiguration;

  /// Creates a new [ProjectOverrideConfigurationAudio].
  /// [languageConfiguration] Language settings. See `languageConfiguration` Block below.
  /// [modalityProcessing] Whether to process video files. See `modalityProcessing` Block below.
  /// [sensitiveDataConfiguration] Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  const ProjectOverrideConfigurationAudio({
    this.languageConfiguration,
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationAudioLanguageConfiguration, Map<String, dynamic>>(languageConfiguration, (value) => value.toMap()),
      'modalityProcessing': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationAudioModalityProcessing, Map<String, dynamic>>(modalityProcessing, (value) => value.toMap()),
      'sensitiveDataConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationAudioSensitiveDataConfiguration, Map<String, dynamic>>(sensitiveDataConfiguration, (value) => value.toMap()),
    };
  }

  factory ProjectOverrideConfigurationAudio.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationAudio(
      languageConfiguration: (() { final guardedValue = map['languageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationAudioLanguageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modalityProcessing: (() { final guardedValue = map['modalityProcessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationAudioModalityProcessing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitiveDataConfiguration: (() { final guardedValue = map['sensitiveDataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationAudioSensitiveDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
