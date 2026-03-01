// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_v1beta1_get_cluster_redis_v1beta1_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_redis_v1beta1_get_cluster_redis_v1beta1_args_doc}
class GetClusterRedisV1beta1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterRedisV1beta1Args].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetClusterRedisV1beta1Args({
    required String clusterId,
    required String location,
    String? project,
  }) : clusterId = pulumi.Input.asInput<String>(clusterId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetClusterRedisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetClusterRedisV1beta1Args(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
