// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_user_created_connections_cluster_endpoint/cluster_user_created_connections_cluster_endpoint.dart';

/// The set of arguments for ClusterUserCreatedConnections.
class ClusterUserCreatedConnectionsArgs {
  /// A list of cluster endpoints
  /// Structure is documented below.
  final pulumi.Input<List<ClusterUserCreatedConnectionsClusterEndpoint>>?
      clusterEndpoints;

  /// The name of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the region of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String> region;

  ClusterUserCreatedConnectionsArgs({
    this.clusterEndpoints,
    this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterEndpointsValue = clusterEndpoints;
    if (clusterEndpointsValue != null) {
      map['clusterEndpoints'] = pulumi.Input.mapOptionalInputValue<
              List<ClusterUserCreatedConnectionsClusterEndpoint>,
              List<Map<String, dynamic>>>(
          clusterEndpointsValue,
          (value) => pulumi.Input.encodeList<
              ClusterUserCreatedConnectionsClusterEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory ClusterUserCreatedConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsArgs(
      clusterEndpoints: pulumi.Input.asOptionalInput<
              List<ClusterUserCreatedConnectionsClusterEndpoint>>(
          map['clusterEndpoints']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
