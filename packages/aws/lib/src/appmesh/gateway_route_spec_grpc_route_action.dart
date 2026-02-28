// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_grpc_route_action_target.dart';

class GatewayRouteSpecGrpcRouteAction {
  /// Target that traffic is routed to when a request matches the gateway route.
  final GatewayRouteSpecGrpcRouteActionTarget target;

  /// Creates a new [GatewayRouteSpecGrpcRouteAction].
  /// [target] Target that traffic is routed to when a request matches the gateway route.
  GatewayRouteSpecGrpcRouteAction({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['target'] = target.toMap();
    return map;
  }

  factory GatewayRouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteAction(
      target: GatewayRouteSpecGrpcRouteActionTarget.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
