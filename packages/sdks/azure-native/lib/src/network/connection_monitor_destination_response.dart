// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the destination of connection monitor.
class ConnectionMonitorDestinationResponse {
  /// Address of the connection monitor destination (IP or domain name).
  final pulumi.Input<String?>? address;
  /// The destination port used by connection monitor.
  final pulumi.Input<int?>? port;
  /// The ID of the resource used as the destination by connection monitor.
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [ConnectionMonitorDestinationResponse].
  /// [address] Address of the connection monitor destination (IP or domain name).
  /// [port] The destination port used by connection monitor.
  /// [resourceId] The ID of the resource used as the destination by connection monitor.
  const ConnectionMonitorDestinationResponse({
    this.address,
    this.port,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'resourceId': ?resourceId,
    };
  }

  factory ConnectionMonitorDestinationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorDestinationResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
