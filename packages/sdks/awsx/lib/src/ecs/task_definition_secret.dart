// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionSecret {
  final pulumi.Input<String> name;
  final pulumi.Input<String> valueFrom;

  /// Creates a new [TaskDefinitionSecret].
  /// [name] Required.
  /// [valueFrom] Required.
  TaskDefinitionSecret({required this.name, required this.valueFrom});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'valueFrom': valueFrom};
  }

  factory TaskDefinitionSecret.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionSecret(
      name: pulumi.Input.fromValue(map['name'] as String),
      valueFrom: pulumi.Input.fromValue(map['valueFrom'] as String),
    );
  }
}
