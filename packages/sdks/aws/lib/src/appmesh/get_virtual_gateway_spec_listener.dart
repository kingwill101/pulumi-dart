// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_connection_pool.dart';
import 'get_virtual_gateway_spec_listener_health_check.dart';
import 'get_virtual_gateway_spec_listener_port_mapping.dart';
import 'get_virtual_gateway_spec_listener_tl.dart';

class GetVirtualGatewaySpecListener {
  final pulumi.Input<List<GetVirtualGatewaySpecListenerConnectionPool>> connectionPools;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerHealthCheck>> healthChecks;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerPortMapping>> portMappings;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTl>> tls;

  /// Creates a new [GetVirtualGatewaySpecListener].
  /// [connectionPools] Required.
  /// [healthChecks] Required.
  /// [portMappings] Required.
  /// [tls] Required.
  const GetVirtualGatewaySpecListener({
    required this.connectionPools,
    required this.healthChecks,
    required this.portMappings,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPools': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecListenerConnectionPool>, List<Map<String, dynamic>>>(connectionPools, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecListenerConnectionPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthChecks': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecListenerHealthCheck>, List<Map<String, dynamic>>>(healthChecks, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecListenerHealthCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portMappings': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecListenerPortMapping>, List<Map<String, dynamic>>>(portMappings, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecListenerPortMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tls': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecListenerTl>, List<Map<String, dynamic>>>(tls, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecListenerTl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListener(
      connectionPools: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecListenerConnectionPool>(map['connectionPools']!, (value) => GetVirtualGatewaySpecListenerConnectionPool.fromMap((value as Map).cast<String, dynamic>()))),
      healthChecks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecListenerHealthCheck>(map['healthChecks']!, (value) => GetVirtualGatewaySpecListenerHealthCheck.fromMap((value as Map).cast<String, dynamic>()))),
      portMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecListenerPortMapping>(map['portMappings']!, (value) => GetVirtualGatewaySpecListenerPortMapping.fromMap((value as Map).cast<String, dynamic>()))),
      tls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTl>(map['tls']!, (value) => GetVirtualGatewaySpecListenerTl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
