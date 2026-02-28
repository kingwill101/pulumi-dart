// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_connection_pool.dart';
import 'get_virtual_gateway_spec_listener_health_check.dart';
import 'get_virtual_gateway_spec_listener_port_mapping.dart';
import 'get_virtual_gateway_spec_listener_tl.dart';

class GetVirtualGatewaySpecListener {
  final List<GetVirtualGatewaySpecListenerConnectionPool> connectionPools;
  final List<GetVirtualGatewaySpecListenerHealthCheck> healthChecks;
  final List<GetVirtualGatewaySpecListenerPortMapping> portMappings;
  final List<GetVirtualGatewaySpecListenerTl> tls;

  /// Creates a new [GetVirtualGatewaySpecListener].
  /// [connectionPools] Required.
  /// [healthChecks] Required.
  /// [portMappings] Required.
  /// [tls] Required.
  GetVirtualGatewaySpecListener({
    required this.connectionPools,
    required this.healthChecks,
    required this.portMappings,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPools'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecListenerConnectionPool,
        Map<String, dynamic>>(connectionPools, (value) => value.toMap());
    map['healthChecks'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecListenerHealthCheck,
        Map<String, dynamic>>(healthChecks, (value) => value.toMap());
    map['portMappings'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecListenerPortMapping,
        Map<String, dynamic>>(portMappings, (value) => value.toMap());
    map['tls'] = pulumi.Input.encodeList<GetVirtualGatewaySpecListenerTl,
        Map<String, dynamic>>(tls, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListener(
      connectionPools:
          pulumi.Input.decodeList<GetVirtualGatewaySpecListenerConnectionPool>(
              map['connectionPools'],
              (value) => GetVirtualGatewaySpecListenerConnectionPool.fromMap(
                  (value as Map).cast<String, dynamic>())),
      healthChecks:
          pulumi.Input.decodeList<GetVirtualGatewaySpecListenerHealthCheck>(
              map['healthChecks'],
              (value) => GetVirtualGatewaySpecListenerHealthCheck.fromMap(
                  (value as Map).cast<String, dynamic>())),
      portMappings:
          pulumi.Input.decodeList<GetVirtualGatewaySpecListenerPortMapping>(
              map['portMappings'],
              (value) => GetVirtualGatewaySpecListenerPortMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tls: pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTl>(
          map['tls'],
          (value) => GetVirtualGatewaySpecListenerTl.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
