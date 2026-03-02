// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Endpoint
class RdsDbInstanceEndpoint {
  /// Specifies the DNS address of the DB instance.
  final pulumi.Input<String>? address;
  /// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  final pulumi.Input<String>? hostedZoneId;
  /// Specifies the port that the database engine is listening on.
  final pulumi.Input<String>? port;

  /// Creates a new [RdsDbInstanceEndpoint].
  /// [address] Specifies the DNS address of the DB instance.
  /// [hostedZoneId] Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  /// [port] Specifies the port that the database engine is listening on.
  RdsDbInstanceEndpoint({
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

  factory RdsDbInstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return RdsDbInstanceEndpoint(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
    );
  }
}

