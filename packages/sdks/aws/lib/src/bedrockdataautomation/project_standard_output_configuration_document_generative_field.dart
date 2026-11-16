// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationDocumentGenerativeField {
  final pulumi.Input<String> state;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentGenerativeField].
  /// [state] Required.
  const ProjectStandardOutputConfigurationDocumentGenerativeField({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectStandardOutputConfigurationDocumentGenerativeField.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentGenerativeField(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
