// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_video_extraction.dart';
import 'project_standard_output_configuration_video_generative_field.dart';

class ProjectStandardOutputConfigurationVideo {
  /// Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationVideoExtraction?>? extraction;
  /// Generative output settings. See `video.generative_field` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationVideoGenerativeField?>? generativeField;

  /// Creates a new [ProjectStandardOutputConfigurationVideo].
  /// [extraction] Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  /// [generativeField] Generative output settings. See `video.generative_field` Block below.
  const ProjectStandardOutputConfigurationVideo({
    this.extraction,
    this.generativeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraction': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationVideoExtraction, Map<String, dynamic>>(extraction, (value) => value.toMap()),
      'generativeField': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationVideoGenerativeField, Map<String, dynamic>>(generativeField, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationVideo.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationVideo(
      extraction: (() { final guardedValue = map['extraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationVideoExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generativeField: (() { final guardedValue = map['generativeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationVideoGenerativeField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
