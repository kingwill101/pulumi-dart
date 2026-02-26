// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_gateway_spec_listener_connection_pool/virtual_gateway_spec_listener_connection_pool.dart';
import '../virtual_gateway_spec_listener_health_check/virtual_gateway_spec_listener_health_check.dart';
import '../virtual_gateway_spec_listener_port_mapping/virtual_gateway_spec_listener_port_mapping.dart';
import '../virtual_gateway_spec_listener_tls/virtual_gateway_spec_listener_tls.dart';

class VirtualGatewaySpecListener {
  /// Connection pool information for the listener.
  final VirtualGatewaySpecListenerConnectionPool? connectionPool;

  /// Health check information for the listener.
  final VirtualGatewaySpecListenerHealthCheck? healthCheck;

  /// Port mapping information for the listener.
  final VirtualGatewaySpecListenerPortMapping portMapping;

  /// Transport Layer Security (TLS) properties for the listener
  final VirtualGatewaySpecListenerTls? tls;

  VirtualGatewaySpecListener({
    this.connectionPool,
    this.healthCheck,
    required this.portMapping,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPoolValue = connectionPool;
    if (connectionPoolValue != null) {
      map['connectionPool'] = connectionPoolValue.toMap();
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue.toMap();
    }
    map['portMapping'] = portMapping.toMap();
    final tlsValue = tls;
    if (tlsValue != null) {
      map['tls'] = tlsValue.toMap();
    }
    return map;
  }

  factory VirtualGatewaySpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListener(
      connectionPool: map['connectionPool'] == null
          ? null
          : VirtualGatewaySpecListenerConnectionPool.fromMap(
              (map['connectionPool'] as Map).cast<String, dynamic>()),
      healthCheck: map['healthCheck'] == null
          ? null
          : VirtualGatewaySpecListenerHealthCheck.fromMap(
              (map['healthCheck'] as Map).cast<String, dynamic>()),
      portMapping: VirtualGatewaySpecListenerPortMapping.fromMap(
          (map['portMapping'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null
          ? null
          : VirtualGatewaySpecListenerTls.fromMap(
              (map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}
