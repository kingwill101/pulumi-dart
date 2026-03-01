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
  HpcClusterState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
    };
  }

  factory HpcClusterState.fromMap(Map<String, dynamic> map) {
    return HpcClusterState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

