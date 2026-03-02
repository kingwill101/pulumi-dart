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
      address: map['address'] == null ? null : (map['address'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

