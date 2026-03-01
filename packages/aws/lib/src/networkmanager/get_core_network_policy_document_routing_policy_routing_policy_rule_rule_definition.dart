// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_routing_policy_routing_policy_rule_rule_definition_action.dart';
import 'get_core_network_policy_document_routing_policy_routing_policy_rule_rule_definition_match_condition.dart';

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition {
  /// Block defining the action to take when conditions match. Detailed below.
  final GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction action;
  /// Logic to apply when multiple match conditions are present. Valid values: `and`, `or`.
  final String? conditionLogic;
  /// List of conditions to match against routes. Detailed below.
  final List<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition>? matchConditions;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition].
  /// [action] Block defining the action to take when conditions match. Detailed below.
  /// [conditionLogic] Logic to apply when multiple match conditions are present. Valid values: `and`, `or`.
  /// [matchConditions] List of conditions to match against routes. Detailed below.
  GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition({
    required this.action,
    this.conditionLogic,
    this.matchConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'conditionLogic': ?conditionLogic,
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
    };
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition(
      action: GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      conditionLogic: map['conditionLogic'] == null ? null : map['conditionLogic'] as String,
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition>(map['matchConditions'], (value) => GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

