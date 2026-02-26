// ignore_for_file: unused_element, unnecessary_cast

import '../instance_desired_user_created_endpoints_desired_user_created_endpoint_connection_psc_connection/instance_desired_user_created_endpoints_desired_user_created_endpoint_connection_psc_connection.dart';

class InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection {
  /// Detailed information of a PSC connection that is created by the customer
  /// who owns the cluster.
  /// Structure is documented below.
  final InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection?
      pscConnection;

  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection({
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

  factory InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection.fromMap(
      Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection(
      pscConnection: map['pscConnection'] == null
          ? null
          : InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection
              .fromMap((map['pscConnection'] as Map).cast<String, dynamic>()),
    );
  }
}
