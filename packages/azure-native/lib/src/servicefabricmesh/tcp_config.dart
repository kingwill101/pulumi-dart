// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_destination.dart';

/// Describes the tcp configuration for external connectivity for this network.
class TcpConfig {
  /// Describes destination endpoint for routing traffic.
  final GatewayDestination destination;
  /// tcp gateway config name.
  final String name;
  /// Specifies the port at which the service endpoint below needs to be exposed.
  final int port;

  /// Creates a new [TcpConfig].
  /// [destination] Describes destination endpoint for routing traffic.
  /// [name] tcp gateway config name.
  /// [port] Specifies the port at which the service endpoint below needs to be exposed.
  TcpConfig({
    required this.destination,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
      'name': name,
      'port': port,
    };
  }

  factory TcpConfig.fromMap(Map<String, dynamic> map) {
    return TcpConfig(
      destination: GatewayDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}

