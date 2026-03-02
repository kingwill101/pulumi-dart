// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_action_rewrite.dart';
import 'gateway_route_spec_http_route_action_target.dart';

class GatewayRouteSpecHttpRouteAction {
  /// Gateway route action to rewrite.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewrite>? rewrite;
  /// Target that traffic is routed to when a request matches the gateway route.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionTarget> target;

  /// Creates a new [GatewayRouteSpecHttpRouteAction].
  /// [rewrite] Gateway route action to rewrite.
  /// [target] Target that traffic is routed to when a request matches the gateway route.
  GatewayRouteSpecHttpRouteAction({
    this.rewrite,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteActionRewrite, Map<String, dynamic>>(rewrite, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<GatewayRouteSpecHttpRouteActionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteAction(
      rewrite: map['rewrite'] == null ? null : ((GatewayRouteSpecHttpRouteActionRewrite.fromMap((map['rewrite']! as Map).cast<String, dynamic>())).input()).input(),
      target: (GatewayRouteSpecHttpRouteActionTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

