// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action_route_to_target_weighted_route_traffic_split.dart';

class AgentcoreGatewayRuleActionRouteToTargetWeightedRoute {
  /// Exactly two `trafficSplit` blocks describing the two variants.
  final pulumi.Input<List<AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit>?>? trafficSplits;

  /// Creates a new [AgentcoreGatewayRuleActionRouteToTargetWeightedRoute].
  /// [trafficSplits] Exactly two `trafficSplit` blocks describing the two variants.
  const AgentcoreGatewayRuleActionRouteToTargetWeightedRoute({
    this.trafficSplits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trafficSplits': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit>, List<Map<String, dynamic>>>(trafficSplits, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreGatewayRuleActionRouteToTargetWeightedRoute.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionRouteToTargetWeightedRoute(
      trafficSplits: (() { final guardedValue = map['trafficSplits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit>(guardedValue, (value) => AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
