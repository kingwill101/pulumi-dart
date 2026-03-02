// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceListenerEndpoint {
  /// Specifies the DNS address of the DB instance.
  final pulumi.Input<String>? address;
  /// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  final pulumi.Input<String>? hostedZoneId;
  /// The port on which the DB accepts connections.
  final pulumi.Input<int>? port;

  /// Creates a new [InstanceListenerEndpoint].
  /// [address] Specifies the DNS address of the DB instance.
  /// [hostedZoneId] Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  /// [port] The port on which the DB accepts connections.
  InstanceListenerEndpoint({
    this.address,
    this.hostedZoneId,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'hostedZoneId': ?hostedZoneId,
      'port': ?port,
    };
  }

  factory InstanceListenerEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceListenerEndpoint(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

