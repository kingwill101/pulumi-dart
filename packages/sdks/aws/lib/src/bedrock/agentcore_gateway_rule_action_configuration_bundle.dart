// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action_configuration_bundle_static_override.dart';
import 'agentcore_gateway_rule_action_configuration_bundle_weighted_override.dart';

class AgentcoreGatewayRuleActionConfigurationBundle {
  /// Statically override the configuration bundle used for the matched request.
  final pulumi.Input<AgentcoreGatewayRuleActionConfigurationBundleStaticOverride>? staticOverride;
  /// Distribute the request across two configuration bundle versions by weight.
  final pulumi.Input<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride>? weightedOverride;

  /// Creates a new [AgentcoreGatewayRuleActionConfigurationBundle].
  /// [staticOverride] Statically override the configuration bundle used for the matched request.
  /// [weightedOverride] Distribute the request across two configuration bundle versions by weight.
  const AgentcoreGatewayRuleActionConfigurationBundle({
    this.staticOverride,
    this.weightedOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticOverride': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionConfigurationBundleStaticOverride, Map<String, dynamic>>(staticOverride, (value) => value.toMap()),
      'weightedOverride': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride, Map<String, dynamic>>(weightedOverride, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleActionConfigurationBundle.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionConfigurationBundle(
      staticOverride: (() { final guardedValue = map['staticOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionConfigurationBundleStaticOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weightedOverride: (() { final guardedValue = map['weightedOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionConfigurationBundleWeightedOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
