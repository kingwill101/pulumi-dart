// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action_configuration_bundle_weighted_override_traffic_split_configuration_bundle.dart';

class AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit {
  /// Reference to the configuration bundle for this variant.
  final pulumi.Input<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle>? configurationBundle;
  /// Description of the rule. Between 1 and 256 characters.
  final pulumi.Input<String>? description;
  /// Up to 25 key/value metadata pairs describing this variant.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Name of this variant. Between 1 and 64 characters; alphanumeric with internal hyphens.
  final pulumi.Input<String> name;
  /// Percentage of traffic routed to this variant, between 1 and 99.
  final pulumi.Input<int> weight;

  /// Creates a new [AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit].
  /// [configurationBundle] Reference to the configuration bundle for this variant.
  /// [description] Description of the rule. Between 1 and 256 characters.
  /// [metadata] Up to 25 key/value metadata pairs describing this variant.
  /// [name] Name of this variant. Between 1 and 64 characters; alphanumeric with internal hyphens.
  /// [weight] Percentage of traffic routed to this variant, between 1 and 99.
  const AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit({
    this.configurationBundle,
    this.description,
    this.metadata,
    required this.name,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationBundle': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle, Map<String, dynamic>>(configurationBundle, (value) => value.toMap()),
      'description': ?description,
      'metadata': ?metadata,
      'name': name,
      'weight': weight,
    };
  }

  factory AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit(
      configurationBundle: (() { final guardedValue = map['configurationBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
