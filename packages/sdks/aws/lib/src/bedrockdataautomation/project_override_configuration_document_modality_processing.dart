// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationDocumentModalityProcessing {
  /// Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectOverrideConfigurationDocumentModalityProcessing].
  /// [state] Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  const ProjectOverrideConfigurationDocumentModalityProcessing({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectOverrideConfigurationDocumentModalityProcessing.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationDocumentModalityProcessing(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
