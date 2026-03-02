// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionKeyValuePair {
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? value;

  /// Creates a new [TaskDefinitionKeyValuePair].
  /// [name] Optional.
  /// [value] Optional.
  TaskDefinitionKeyValuePair({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory TaskDefinitionKeyValuePair.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionKeyValuePair(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

