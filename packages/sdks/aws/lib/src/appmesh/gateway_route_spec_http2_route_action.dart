// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_action_rewrite.dart';
import 'gateway_route_spec_http2_route_action_target.dart';

class GatewayRouteSpecHttp2RouteAction {
  /// Gateway route action to rewrite.
  final pulumi.Input<GatewayRouteSpecHttp2RouteActionRewrite>? rewrite;
  /// Target that traffic is routed to when a request matches the gateway route.
  final pulumi.Input<GatewayRouteSpecHttp2RouteActionTarget> target;

  /// Creates a new [GatewayRouteSpecHttp2RouteAction].
  /// [rewrite] Gateway route action to rewrite.
  /// [target] Target that traffic is routed to when a request matches the gateway route.
  GatewayRouteSpecHttp2RouteAction({
    this.rewrite,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteActionRewrite, Map<String, dynamic>>(rewrite, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<GatewayRouteSpecHttp2RouteActionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteAction(
      rewrite: (() { final guardedValue = map['rewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteActionRewrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteActionTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

