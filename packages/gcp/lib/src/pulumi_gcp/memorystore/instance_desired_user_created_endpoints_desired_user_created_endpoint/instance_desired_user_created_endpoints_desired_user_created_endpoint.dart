// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_desired_user_created_endpoints_desired_user_created_endpoint_connection/instance_desired_user_created_endpoints_desired_user_created_endpoint_connection.dart';

class InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint {
  /// Structure is documented below.
  final List<
          InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>?
      connections;

  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint({
    this.connections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionsValue = connections;
    if (connectionsValue != null) {
      map['connections'] = Input.encodeList<
          InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection,
          Map<String, dynamic>>(connectionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint.fromMap(
      Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint(
      connections: map['connections'] == null
          ? null
          : Input.decodeList<
                  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>(
              map['connections'],
              (value) =>
                  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
