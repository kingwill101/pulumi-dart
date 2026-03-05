// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Endpoint
class RedshiftClusterEndpointResponse {
  /// Property address
  final pulumi.Input<String>? address;
  /// Property port
  final pulumi.Input<String>? port;

  /// Creates a new [RedshiftClusterEndpointResponse].
  /// [address] Property address
  /// [port] Property port
  RedshiftClusterEndpointResponse({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory RedshiftClusterEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RedshiftClusterEndpointResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

