// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Endpoint
class RedshiftClusterEndpoint {
  /// Property address
  final pulumi.Input<String>? address;
  /// Property port
  final pulumi.Input<String>? port;

  /// Creates a new [RedshiftClusterEndpoint].
  /// [address] Property address
  /// [port] Property port
  RedshiftClusterEndpoint({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory RedshiftClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return RedshiftClusterEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

