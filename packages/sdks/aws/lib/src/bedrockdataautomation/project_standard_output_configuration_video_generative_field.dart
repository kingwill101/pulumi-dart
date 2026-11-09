// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationVideoGenerativeField {
  final pulumi.Input<String> state;
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [ProjectStandardOutputConfigurationVideoGenerativeField].
  /// [state] Required.
  /// [types] Optional.
  const ProjectStandardOutputConfigurationVideoGenerativeField({
    required this.state,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'types': ?types,
    };
  }

  factory ProjectStandardOutputConfigurationVideoGenerativeField.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationVideoGenerativeField(
      state: pulumi.Input.fromValue(map['state'] as String),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
