// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the destination of connection monitor.
class ConnectionMonitorDestination {
  /// Address of the connection monitor destination (IP or domain name).
  final pulumi.Input<String>? address;
  /// The destination port used by connection monitor.
  final pulumi.Input<int>? port;
  /// The ID of the resource used as the destination by connection monitor.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ConnectionMonitorDestination].
  /// [address] Address of the connection monitor destination (IP or domain name).
  /// [port] The destination port used by connection monitor.
  /// [resourceId] The ID of the resource used as the destination by connection monitor.
  ConnectionMonitorDestination({
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

  factory ConnectionMonitorDestination.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorDestination(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

