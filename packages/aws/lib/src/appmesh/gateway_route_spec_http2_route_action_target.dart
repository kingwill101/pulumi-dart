// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http2_route_action_target_virtual_service.dart';

class GatewayRouteSpecHttp2RouteActionTarget {
  /// The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  final int? port;

  /// Virtual service gateway route target.
  final GatewayRouteSpecHttp2RouteActionTargetVirtualService virtualService;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionTarget].
  /// [port] The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  /// [virtualService] Virtual service gateway route target.
  GatewayRouteSpecHttp2RouteActionTarget({
    this.port,
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'virtualService': virtualService.toMap(),
    };
  }

  factory GatewayRouteSpecHttp2RouteActionTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayRouteSpecHttp2RouteActionTarget(
      port: map['port'] == null ? null : map['port'] as int,
      virtualService:
          GatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(
            (map['virtualService'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
