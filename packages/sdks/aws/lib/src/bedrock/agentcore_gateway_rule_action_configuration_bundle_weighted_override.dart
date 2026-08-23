// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action_configuration_bundle_weighted_override_traffic_split.dart';

class AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride {
  /// Exactly two `trafficSplit` blocks describing the two variants.
  final pulumi.Input<List<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit>>? trafficSplits;

  /// Creates a new [AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride].
  /// [trafficSplits] Exactly two `trafficSplit` blocks describing the two variants.
  const AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride({
    this.trafficSplits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trafficSplits': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit>, List<Map<String, dynamic>>>(trafficSplits, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride(
      trafficSplits: (() { final guardedValue = map['trafficSplits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit>(guardedValue, (value) => AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
