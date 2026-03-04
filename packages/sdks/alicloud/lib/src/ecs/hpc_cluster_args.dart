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
  HpcClusterArgs({this.description, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'name': ?name};
  }

  factory HpcClusterArgs.fromMap(Map<String, dynamic> map) {
    return HpcClusterArgs(
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
