// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_audio_extraction.dart';
import 'project_standard_output_configuration_audio_generative_field.dart';

class ProjectStandardOutputConfigurationAudio {
  /// Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioExtraction?>? extraction;
  /// Generative output settings. See `video.generative_field` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioGenerativeField?>? generativeField;

  /// Creates a new [ProjectStandardOutputConfigurationAudio].
  /// [extraction] Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  /// [generativeField] Generative output settings. See `video.generative_field` Block below.
  const ProjectStandardOutputConfigurationAudio({
    this.extraction,
    this.generativeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraction': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudioExtraction, Map<String, dynamic>>(extraction, (value) => value.toMap()),
      'generativeField': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudioGenerativeField, Map<String, dynamic>>(generativeField, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationAudio.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudio(
      extraction: (() { final guardedValue = map['extraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generativeField: (() { final guardedValue = map['generativeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioGenerativeField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
