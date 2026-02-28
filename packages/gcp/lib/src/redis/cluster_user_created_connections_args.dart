// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_created_connections_cluster_endpoint.dart';

/// {@template pulumi_redis_cluster_user_created_connections_cluster_user_created_connections_args_doc}
/// The set of arguments for ClusterUserCreatedConnections.
/// {@endtemplate}
/// {@macro pulumi_redis_cluster_user_created_connections_cluster_user_created_connections_args_doc}
class ClusterUserCreatedConnectionsArgs {
  /// A list of cluster endpoints
  /// Structure is documented below.
  final pulumi.Input<List<ClusterUserCreatedConnectionsClusterEndpoint>>? clusterEndpoints;
  /// The name of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the region of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String> region;

  /// Creates a new [ClusterUserCreatedConnectionsArgs].
  /// [clusterEndpoints] A list of cluster endpoints
  /// [name] The name of the Redis cluster these endpoints should be added to.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Redis cluster these endpoints should be added to.
  ClusterUserCreatedConnectionsArgs({
    List<ClusterUserCreatedConnectionsClusterEndpoint>? clusterEndpoints,
    String? name,
    String? project,
    required String region,
  }) :
      clusterEndpoints = pulumi.Input.asOptionalInput<List<ClusterUserCreatedConnectionsClusterEndpoint>>(clusterEndpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ClusterUserCreatedConnectionsClusterEndpoint>, List<Map<String, dynamic>>>(clusterEndpoints, (value) => pulumi.Input.encodeList<ClusterUserCreatedConnectionsClusterEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'region': region,
    };
  }

  factory ClusterUserCreatedConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsArgs(
      clusterEndpoints: map['clusterEndpoints'] == null ? null : pulumi.Input.decodeList<ClusterUserCreatedConnectionsClusterEndpoint>(map['clusterEndpoints'], (value) => ClusterUserCreatedConnectionsClusterEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

