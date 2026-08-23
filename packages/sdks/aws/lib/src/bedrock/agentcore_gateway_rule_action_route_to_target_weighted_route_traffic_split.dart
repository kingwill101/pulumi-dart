// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit {
  /// Description of the rule. Between 1 and 256 characters.
  final pulumi.Input<String>? description;
  /// Up to 25 key/value metadata pairs describing this variant.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Name of this variant. Between 1 and 64 characters; alphanumeric with internal hyphens.
  final pulumi.Input<String> name;
  /// Name of the gateway target this variant points to.
  final pulumi.Input<String> targetName;
  /// Percentage of traffic routed to this variant, between 1 and 99.
  final pulumi.Input<int> weight;

  /// Creates a new [AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit].
  /// [description] Description of the rule. Between 1 and 256 characters.
  /// [metadata] Up to 25 key/value metadata pairs describing this variant.
  /// [name] Name of this variant. Between 1 and 64 characters; alphanumeric with internal hyphens.
  /// [targetName] Name of the gateway target this variant points to.
  /// [weight] Percentage of traffic routed to this variant, between 1 and 99.
  const AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit({
    this.description,
    this.metadata,
    required this.name,
    required this.targetName,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'metadata': ?metadata,
      'name': name,
      'targetName': targetName,
      'weight': weight,
    };
  }

  factory AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
