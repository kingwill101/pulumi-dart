// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_image_extraction.dart';
import 'project_standard_output_configuration_image_generative_field.dart';

class ProjectStandardOutputConfigurationImage {
  /// Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationImageExtraction?>? extraction;
  /// Generative output settings. See `video.generative_field` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationImageGenerativeField?>? generativeField;

  /// Creates a new [ProjectStandardOutputConfigurationImage].
  /// [extraction] Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  /// [generativeField] Generative output settings. See `video.generative_field` Block below.
  const ProjectStandardOutputConfigurationImage({
    this.extraction,
    this.generativeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraction': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationImageExtraction, Map<String, dynamic>>(extraction, (value) => value.toMap()),
      'generativeField': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationImageGenerativeField, Map<String, dynamic>>(generativeField, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationImage.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationImage(
      extraction: (() { final guardedValue = map['extraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationImageExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generativeField: (() { final guardedValue = map['generativeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationImageGenerativeField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
