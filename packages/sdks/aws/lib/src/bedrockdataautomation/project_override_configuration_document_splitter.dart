// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationDocumentSplitter {
  /// Whether to split documents that contain multiple logical documents. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectOverrideConfigurationDocumentSplitter].
  /// [state] Whether to split documents that contain multiple logical documents. Valid values: `ENABLED`, `DISABLED`.
  const ProjectOverrideConfigurationDocumentSplitter({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectOverrideConfigurationDocumentSplitter.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationDocumentSplitter(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
