// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionResourceRequirement {
  final pulumi.Input<String> type;
  final pulumi.Input<String> value;

  /// Creates a new [TaskDefinitionResourceRequirement].
  /// [type] Required.
  /// [value] Required.
  TaskDefinitionResourceRequirement({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory TaskDefinitionResourceRequirement.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionResourceRequirement(
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

