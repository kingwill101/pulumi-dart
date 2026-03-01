// ignore_for_file: unused_element, unnecessary_cast

import 'get_core_network_policy_document_routing_policy_routing_policy_rule_rule_definition.dart';

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule {
  /// Defines the match conditions and actions for the rule. Detailed below.
  final GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition ruleDefinition;
  /// Priority number for the rule within the routing policy. Must be between 1 and 9999. Lower numbers are evaluated first.
  final int ruleNumber;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule].
  /// [ruleDefinition] Defines the match conditions and actions for the rule. Detailed below.
  /// [ruleNumber] Priority number for the rule within the routing policy. Must be between 1 and 9999. Lower numbers are evaluated first.
  GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule({
    required this.ruleDefinition,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleDefinition': ruleDefinition.toMap(),
      'ruleNumber': ruleNumber,
    };
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRule(
      ruleDefinition: GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition.fromMap((map['ruleDefinition'] as Map).cast<String, dynamic>()),
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}

