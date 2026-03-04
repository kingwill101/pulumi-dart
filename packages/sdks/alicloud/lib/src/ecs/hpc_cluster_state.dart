// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HpcCluster resources.
class HpcClusterState {
  /// The description of ECS Hpc Cluster.
  final pulumi.Input<String>? description;

  /// The name of ECS Hpc Cluster.
  final pulumi.Input<String>? name;

  /// Creates a new [HpcClusterState].
  /// [description] The description of ECS Hpc Cluster.
  /// [name] The name of ECS Hpc Cluster.
  HpcClusterState({this.description, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'name': ?name};
  }

  factory HpcClusterState.fromMap(Map<String, dynamic> map) {
    return HpcClusterState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
