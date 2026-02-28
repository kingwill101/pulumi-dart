// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_grpc_route_action_target_virtual_service.dart';

class GatewayRouteSpecGrpcRouteActionTarget {
  /// The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  final int? port;

  /// Virtual service gateway route target.
  final GatewayRouteSpecGrpcRouteActionTargetVirtualService virtualService;

  /// Creates a new [GatewayRouteSpecGrpcRouteActionTarget].
  /// [port] The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  /// [virtualService] Virtual service gateway route target.
  GatewayRouteSpecGrpcRouteActionTarget({
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

  factory GatewayRouteSpecGrpcRouteActionTarget.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteActionTarget(
      port: map['port'] == null ? null : map['port'] as int,
      virtualService:
          GatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap(
              (map['virtualService'] as Map).cast<String, dynamic>()),
    );
  }
}
