// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat {
  /// Whether to produce additional output files. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat].
  /// [state] Whether to produce additional output files. Valid values: `ENABLED`, `DISABLED`.
  const ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormat(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
