// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterResourceResponseEndPoints {
  /// Ipv4 address of the endpoint
  final pulumi.Input<String>? ipAddress;
  /// Port number
  final pulumi.Input<int>? port;

  /// Creates a new [ClusterResourceResponseEndPoints].
  /// [ipAddress] Ipv4 address of the endpoint
  /// [port] Port number
  const ClusterResourceResponseEndPoints({
    this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'port': ?port,
    };
  }

  factory ClusterResourceResponseEndPoints.fromMap(Map<String, dynamic> map) {
    return ClusterResourceResponseEndPoints(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

