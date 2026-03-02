// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionEnvironmentFile {
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? value;

  /// Creates a new [TaskDefinitionEnvironmentFile].
  /// [type] Optional.
  /// [value] Optional.
  TaskDefinitionEnvironmentFile({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory TaskDefinitionEnvironmentFile.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionEnvironmentFile(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

