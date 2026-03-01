// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http2_route_action_rewrite.dart';
import 'gateway_route_spec_http2_route_action_target.dart';

class GatewayRouteSpecHttp2RouteAction {
  /// Gateway route action to rewrite.
  final GatewayRouteSpecHttp2RouteActionRewrite? rewrite;
  /// Target that traffic is routed to when a request matches the gateway route.
  final GatewayRouteSpecHttp2RouteActionTarget target;

  /// Creates a new [GatewayRouteSpecHttp2RouteAction].
  /// [rewrite] Gateway route action to rewrite.
  /// [target] Target that traffic is routed to when a request matches the gateway route.
  GatewayRouteSpecHttp2RouteAction({
    this.rewrite,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?rewrite == null ? null : rewrite!.toMap(),
      'target': target.toMap(),
    };
  }

  factory GatewayRouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteAction(
      rewrite: map['rewrite'] == null ? null : GatewayRouteSpecHttp2RouteActionRewrite.fromMap((map['rewrite'] as Map).cast<String, dynamic>()),
      target: GatewayRouteSpecHttp2RouteActionTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

