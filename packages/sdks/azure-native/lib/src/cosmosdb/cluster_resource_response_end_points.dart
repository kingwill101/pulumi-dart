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
  ClusterResourceResponseEndPoints({
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
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

