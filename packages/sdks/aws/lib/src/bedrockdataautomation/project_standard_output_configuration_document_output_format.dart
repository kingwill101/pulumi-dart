// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_document_output_format_additional_file_format.dart';
import 'project_standard_output_configuration_document_output_format_text_format.dart';

class ProjectStandardOutputConfigurationDocumentOutputFormat {
  /// Whether to produce additional output files. See `additionalFileFormat` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat> additionalFileFormat;
  /// Text output formats. See `textFormat` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat> textFormat;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentOutputFormat].
  /// [additionalFileFormat] Whether to produce additional output files. See `additionalFileFormat` Block below.
  /// [textFormat] Text output formats. See `textFormat` Block below.
  const ProjectStandardOutputConfigurationDocumentOutputFormat({
    required this.additionalFileFormat,
    required this.textFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFileFormat': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat, Map<String, dynamic>>(additionalFileFormat, (value) => value.toMap()),
      'textFormat': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat, Map<String, dynamic>>(textFormat, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationDocumentOutputFormat.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentOutputFormat(
      additionalFileFormat: pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat.fromMap((map['additionalFileFormat']! as Map).cast<String, dynamic>())),
      textFormat: pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat.fromMap((map['textFormat']! as Map).cast<String, dynamic>())),
    );
  }
}
