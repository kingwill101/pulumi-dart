// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_redis_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// The name of the Redis cluster.
  final pulumi.Input<String> name;

  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the Redis cluster.
  final pulumi.Input<String>? region;

  /// Creates a new [GetClusterArgs].
  /// [name] The name of the Redis cluster.
  /// [project] (optional)
  /// [region] The region of the Redis cluster.
  GetClusterArgs({required String name, String? project, String? region})
    : name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
