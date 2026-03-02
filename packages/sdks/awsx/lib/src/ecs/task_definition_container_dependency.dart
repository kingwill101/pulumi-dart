// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionContainerDependency {
  final pulumi.Input<String>? condition;
  final pulumi.Input<String>? containerName;

  /// Creates a new [TaskDefinitionContainerDependency].
  /// [condition] Optional.
  /// [containerName] Optional.
  TaskDefinitionContainerDependency({
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
      condition: map['condition'] == null ? null : (map['condition'] as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
    );
  }
}

