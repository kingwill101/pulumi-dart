// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_audio_extraction_category_type_configuration_transcript.dart';

class ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration {
  /// Transcript settings. See `transcript` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript?>? transcript;

  /// Creates a new [ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration].
  /// [transcript] Transcript settings. See `transcript` Block below.
  const ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration({
    this.transcript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transcript': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript, Map<String, dynamic>>(transcript, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration(
      transcript: (() { final guardedValue = map['transcript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
