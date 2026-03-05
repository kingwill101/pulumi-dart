// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Endpoint
class RdsDbClusterEndpointResponse {
  /// The connection endpoint for the DB cluster.
  final pulumi.Input<String>? address;
  /// The port number that will accept connections on this DB cluster.
  final pulumi.Input<String>? port;

  /// Creates a new [RdsDbClusterEndpointResponse].
  /// [address] The connection endpoint for the DB cluster.
  /// [port] The port number that will accept connections on this DB cluster.
  RdsDbClusterEndpointResponse({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory RdsDbClusterEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RdsDbClusterEndpointResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

