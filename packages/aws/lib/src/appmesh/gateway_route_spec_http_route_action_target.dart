// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http_route_action_target_virtual_service.dart';

class GatewayRouteSpecHttpRouteActionTarget {
  /// The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  final int? port;

  /// Virtual service gateway route target.
  final GatewayRouteSpecHttpRouteActionTargetVirtualService virtualService;

  /// Creates a new [GatewayRouteSpecHttpRouteActionTarget].
  /// [port] The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  /// [virtualService] Virtual service gateway route target.
  GatewayRouteSpecHttpRouteActionTarget({
    this.port,
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['virtualService'] = virtualService.toMap();
    return map;
  }

  factory GatewayRouteSpecHttpRouteActionTarget.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionTarget(
      port: map['port'] == null ? null : map['port'] as int,
      virtualService:
          GatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap(
              (map['virtualService'] as Map).cast<String, dynamic>()),
    );
  }
}
