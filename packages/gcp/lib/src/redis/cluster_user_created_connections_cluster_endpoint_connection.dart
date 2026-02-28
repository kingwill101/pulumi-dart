// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_user_created_connections_cluster_endpoint_connection_psc_connection.dart';

class ClusterUserCreatedConnectionsClusterEndpointConnection {
  /// Detailed information of a PSC connection that is created by the customer
  /// who owns the cluster.
  /// Structure is documented below.
  final ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection?
      pscConnection;

  /// Creates a new [ClusterUserCreatedConnectionsClusterEndpointConnection].
  /// [pscConnection] Detailed information of a PSC connection that is created by the customer
  ClusterUserCreatedConnectionsClusterEndpointConnection({
    this.pscConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pscConnectionValue = pscConnection;
    if (pscConnectionValue != null) {
      map['pscConnection'] = pscConnectionValue.toMap();
    }
    return map;
  }

  factory ClusterUserCreatedConnectionsClusterEndpointConnection.fromMap(
      Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsClusterEndpointConnection(
      pscConnection: map['pscConnection'] == null
          ? null
          : ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection
              .fromMap((map['pscConnection'] as Map).cast<String, dynamic>()),
    );
  }
}
