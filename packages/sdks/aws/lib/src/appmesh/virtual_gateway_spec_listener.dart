// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_connection_pool.dart';
import 'virtual_gateway_spec_listener_health_check.dart';
import 'virtual_gateway_spec_listener_port_mapping.dart';
import 'virtual_gateway_spec_listener_tls.dart';

class VirtualGatewaySpecListener {
  /// Connection pool information for the listener.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPool>? connectionPool;
  /// Health check information for the listener.
  final pulumi.Input<VirtualGatewaySpecListenerHealthCheck>? healthCheck;
  /// Port mapping information for the listener.
  final pulumi.Input<VirtualGatewaySpecListenerPortMapping> portMapping;
  /// Transport Layer Security (TLS) properties for the listener
  final pulumi.Input<VirtualGatewaySpecListenerTls>? tls;

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
      'connectionPool': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerConnectionPool, Map<String, dynamic>>(connectionPool, (value) => value.toMap()),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'portMapping': pulumi.Input.mapInputValue<VirtualGatewaySpecListenerPortMapping, Map<String, dynamic>>(portMapping, (value) => value.toMap()),
      'tls': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListener(
      connectionPool: map['connectionPool'] == null ? null : ((VirtualGatewaySpecListenerConnectionPool.fromMap((map['connectionPool']! as Map).cast<String, dynamic>())).input()).input(),
      healthCheck: map['healthCheck'] == null ? null : ((VirtualGatewaySpecListenerHealthCheck.fromMap((map['healthCheck']! as Map).cast<String, dynamic>())).input()).input(),
      portMapping: (VirtualGatewaySpecListenerPortMapping.fromMap((map['portMapping']! as Map).cast<String, dynamic>())).input(),
      tls: map['tls'] == null ? null : ((VirtualGatewaySpecListenerTls.fromMap((map['tls']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

