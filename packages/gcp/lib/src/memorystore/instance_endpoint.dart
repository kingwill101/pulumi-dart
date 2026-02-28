// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_endpoint_connection.dart';

class InstanceEndpoint {
  /// A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
  /// Structure is documented below.
  final List<InstanceEndpointConnection>? connections;

  /// Creates a new [InstanceEndpoint].
  /// [connections] A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
  InstanceEndpoint({
    this.connections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionsValue = connections;
    if (connectionsValue != null) {
      map['connections'] = pulumi.Input.encodeList<InstanceEndpointConnection,
          Map<String, dynamic>>(connectionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceEndpoint(
      connections: map['connections'] == null
          ? null
          : pulumi.Input.decodeList<InstanceEndpointConnection>(
              map['connections'],
              (value) => InstanceEndpointConnection.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
