// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_dependency_condition.dart';

class ContainerDependency {
  /// The condition that the other container must satisfy.
  final pulumi.Input<ContainerDependencyCondition> condition;
  /// The name of the other container.
  final pulumi.Input<String> containerName;

  /// Creates a new [ContainerDependency].
  /// [condition] The condition that the other container must satisfy.
  /// [containerName] The name of the other container.
  const ContainerDependency({
    required this.condition,
    required this.containerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<ContainerDependencyCondition, String>(condition, (value) => value.wireValue),
      'containerName': containerName,
    };
  }

  factory ContainerDependency.fromMap(Map<String, dynamic> map) {
    return ContainerDependency(
      condition: pulumi.Input.fromValue(ContainerDependencyCondition.fromValue(map['condition']! as String)),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
    );
  }
}
