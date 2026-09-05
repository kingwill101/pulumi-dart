// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action_route_to_target_static_route.dart';
import 'agentcore_gateway_rule_action_route_to_target_weighted_route.dart';

class AgentcoreGatewayRuleActionRouteToTarget {
  /// Route all matching requests to a single named gateway target.
  final pulumi.Input<AgentcoreGatewayRuleActionRouteToTargetStaticRoute?>? staticRoute;
  /// Distribute requests across two named targets by weight.
  final pulumi.Input<AgentcoreGatewayRuleActionRouteToTargetWeightedRoute?>? weightedRoute;

  /// Creates a new [AgentcoreGatewayRuleActionRouteToTarget].
  /// [staticRoute] Route all matching requests to a single named gateway target.
  /// [weightedRoute] Distribute requests across two named targets by weight.
  const AgentcoreGatewayRuleActionRouteToTarget({
    this.staticRoute,
    this.weightedRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticRoute': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionRouteToTargetStaticRoute, Map<String, dynamic>>(staticRoute, (value) => value.toMap()),
      'weightedRoute': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionRouteToTargetWeightedRoute, Map<String, dynamic>>(weightedRoute, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleActionRouteToTarget.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionRouteToTarget(
      staticRoute: (() { final guardedValue = map['staticRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionRouteToTargetStaticRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weightedRoute: (() { final guardedValue = map['weightedRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionRouteToTargetWeightedRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
