// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http_route_action_rewrite.dart';
import 'gateway_route_spec_http_route_action_target.dart';

class GatewayRouteSpecHttpRouteAction {
  /// Gateway route action to rewrite.
  final GatewayRouteSpecHttpRouteActionRewrite? rewrite;

  /// Target that traffic is routed to when a request matches the gateway route.
  final GatewayRouteSpecHttpRouteActionTarget target;

  /// Creates a new [GatewayRouteSpecHttpRouteAction].
  /// [rewrite] Gateway route action to rewrite.
  /// [target] Target that traffic is routed to when a request matches the gateway route.
  GatewayRouteSpecHttpRouteAction({
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

  factory GatewayRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteAction(
      rewrite: map['rewrite'] == null
          ? null
          : GatewayRouteSpecHttpRouteActionRewrite.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
      target: GatewayRouteSpecHttpRouteActionTarget.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
