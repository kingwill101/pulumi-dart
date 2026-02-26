// ignore_for_file: unused_element, unnecessary_cast

import '../gateway_route_spec_http2_route_action_rewrite/gateway_route_spec_http2_route_action_rewrite.dart';
import '../gateway_route_spec_http2_route_action_target/gateway_route_spec_http2_route_action_target.dart';

class GatewayRouteSpecHttp2RouteAction {
  /// Gateway route action to rewrite.
  final GatewayRouteSpecHttp2RouteActionRewrite? rewrite;

  /// Target that traffic is routed to when a request matches the gateway route.
  final GatewayRouteSpecHttp2RouteActionTarget target;

  GatewayRouteSpecHttp2RouteAction({
    this.rewrite,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rewriteValue = rewrite;
    if (rewriteValue != null) {
      map['rewrite'] = rewriteValue.toMap();
    }
    map['target'] = target.toMap();
    return map;
  }

  factory GatewayRouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteAction(
      rewrite: map['rewrite'] == null
          ? null
          : GatewayRouteSpecHttp2RouteActionRewrite.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
      target: GatewayRouteSpecHttp2RouteActionTarget.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
