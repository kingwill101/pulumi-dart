// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionSystemControl {
  final pulumi.Input<String>? namespace;
  final pulumi.Input<String>? value;

  /// Creates a new [TaskDefinitionSystemControl].
  /// [namespace] Optional.
  /// [value] Optional.
  TaskDefinitionSystemControl({
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'value': ?value,
    };
  }

  factory TaskDefinitionSystemControl.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionSystemControl(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

