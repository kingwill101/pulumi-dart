// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_endpoint_connection/get_instance_endpoint_connection.dart';

class GetInstanceEndpoint {
  /// A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
  final List<GetInstanceEndpointConnection> connections;

  GetInstanceEndpoint({
    required this.connections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connections'] =
        Input.encodeList<GetInstanceEndpointConnection, Map<String, dynamic>>(
            connections, (value) => value.toMap());
    return map;
  }

  factory GetInstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return GetInstanceEndpoint(
      connections: Input.decodeList<GetInstanceEndpointConnection>(
          map['connections'],
          (value) => GetInstanceEndpointConnection.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
