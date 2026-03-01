// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_hpc_cluster_hpc_cluster_args_doc}
/// The set of arguments for HpcCluster.
/// {@endtemplate}
/// {@macro pulumi_ecs_hpc_cluster_hpc_cluster_args_doc}
class HpcClusterArgs {
  /// The description of ECS Hpc Cluster.
  final pulumi.Input<String>? description;
  /// The name of ECS Hpc Cluster.
  final pulumi.Input<String>? name;

  /// Creates a new [HpcClusterArgs].
  /// [description] The description of ECS Hpc Cluster.
  /// [name] The name of ECS Hpc Cluster.
  HpcClusterArgs({
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

  factory HpcClusterArgs.fromMap(Map<String, dynamic> map) {
    return HpcClusterArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

