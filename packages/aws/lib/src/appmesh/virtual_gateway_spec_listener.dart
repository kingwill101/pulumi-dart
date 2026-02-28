// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_listener_connection_pool.dart';
import 'virtual_gateway_spec_listener_health_check.dart';
import 'virtual_gateway_spec_listener_port_mapping.dart';
import 'virtual_gateway_spec_listener_tls.dart';

class VirtualGatewaySpecListener {
  /// Connection pool information for the listener.
  final VirtualGatewaySpecListenerConnectionPool? connectionPool;
  /// Health check information for the listener.
  final VirtualGatewaySpecListenerHealthCheck? healthCheck;
  /// Port mapping information for the listener.
  final VirtualGatewaySpecListenerPortMapping portMapping;
  /// Transport Layer Security (TLS) properties for the listener
  final VirtualGatewaySpecListenerTls? tls;

  /// Creates a new [VirtualGatewaySpecListener].
  /// [connectionPool] Connection pool information for the listener.
  /// [healthCheck] Health check information for the listener.
  /// [portMapping] Port mapping information for the listener.
  /// [tls] Transport Layer Security (TLS) properties for the listener
  VirtualGatewaySpecListener({
    this.connectionPool,
    this.healthCheck,
    required this.portMapping,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPool': ?connectionPool == null ? null : connectionPool!.toMap(),
      'healthCheck': ?healthCheck == null ? null : healthCheck!.toMap(),
      'portMapping': portMapping.toMap(),
      'tls': ?tls == null ? null : tls!.toMap(),
    };
  }

  factory VirtualGatewaySpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListener(
      connectionPool: map['connectionPool'] == null ? null : VirtualGatewaySpecListenerConnectionPool.fromMap((map['connectionPool'] as Map).cast<String, dynamic>()),
      healthCheck: map['healthCheck'] == null ? null : VirtualGatewaySpecListenerHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>()),
      portMapping: VirtualGatewaySpecListenerPortMapping.fromMap((map['portMapping'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null ? null : VirtualGatewaySpecListenerTls.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

