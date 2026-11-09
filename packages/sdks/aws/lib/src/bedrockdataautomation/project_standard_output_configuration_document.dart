// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_document_extraction.dart';
import 'project_standard_output_configuration_document_generative_field.dart';
import 'project_standard_output_configuration_document_output_format.dart';

class ProjectStandardOutputConfigurationDocument {
  /// Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentExtraction?>? extraction;
  /// Generative output settings. See `video.generative_field` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentGenerativeField?>? generativeField;
  /// Output format settings. See `outputFormat` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentOutputFormat?>? outputFormat;

  /// Creates a new [ProjectStandardOutputConfigurationDocument].
  /// [extraction] Extraction settings. See `standard_output_configuration.video.extraction` Block below.
  /// [generativeField] Generative output settings. See `video.generative_field` Block below.
  /// [outputFormat] Output format settings. See `outputFormat` Block below.
  const ProjectStandardOutputConfigurationDocument({
    this.extraction,
    this.generativeField,
    this.outputFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraction': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationDocumentExtraction, Map<String, dynamic>>(extraction, (value) => value.toMap()),
      'generativeField': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationDocumentGenerativeField, Map<String, dynamic>>(generativeField, (value) => value.toMap()),
      'outputFormat': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationDocumentOutputFormat, Map<String, dynamic>>(outputFormat, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationDocument.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocument(
      extraction: (() { final guardedValue = map['extraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generativeField: (() { final guardedValue = map['generativeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentGenerativeField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentOutputFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
