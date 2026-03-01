// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_created_connections_cluster_endpoint_connection.dart';

class ClusterUserCreatedConnectionsClusterEndpoint {
  /// Structure is documented below.
  final List<ClusterUserCreatedConnectionsClusterEndpointConnection>?
  connections;

  /// Creates a new [ClusterUserCreatedConnectionsClusterEndpoint].
  /// [connections] Structure is documented below.
  ClusterUserCreatedConnectionsClusterEndpoint({this.connections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?connections == null
          ? null
          : pulumi.Input.encodeList<
              ClusterUserCreatedConnectionsClusterEndpointConnection,
              Map<String, dynamic>
            >(connections!, (value) => value.toMap()),
    };
  }

  factory ClusterUserCreatedConnectionsClusterEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterUserCreatedConnectionsClusterEndpoint(
      connections: map['connections'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterUserCreatedConnectionsClusterEndpointConnection
            >(
              map['connections'],
              (value) =>
                  ClusterUserCreatedConnectionsClusterEndpointConnection.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
