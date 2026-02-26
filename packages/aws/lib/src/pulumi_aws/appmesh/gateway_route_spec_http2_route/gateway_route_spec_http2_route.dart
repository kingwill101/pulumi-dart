// ignore_for_file: unused_element, unnecessary_cast

import '../gateway_route_spec_http2_route_action/gateway_route_spec_http2_route_action.dart';
import '../gateway_route_spec_http2_route_match/gateway_route_spec_http2_route_match.dart';

class GatewayRouteSpecHttp2Route {
  /// Action to take if a match is determined.
  final GatewayRouteSpecHttp2RouteAction action;

  /// Criteria for determining a request match.
  final GatewayRouteSpecHttp2RouteMatch match;

  GatewayRouteSpecHttp2Route({
    required this.action,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['match'] = match.toMap();
    return map;
  }

  factory GatewayRouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2Route(
      action: GatewayRouteSpecHttp2RouteAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      match: GatewayRouteSpecHttp2RouteMatch.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
    );
  }
}
