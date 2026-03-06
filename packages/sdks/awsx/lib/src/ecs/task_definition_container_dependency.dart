// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionContainerDependency {
  final pulumi.Input<String>? condition;
  final pulumi.Input<String>? containerName;

  /// Creates a new [TaskDefinitionContainerDependency].
  /// [condition] Optional.
  /// [containerName] Optional.
  const TaskDefinitionContainerDependency({
    this.condition,
    this.containerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'containerName': ?containerName,
    };
  }

  factory TaskDefinitionContainerDependency.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionContainerDependency(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

