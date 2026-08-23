// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_routing_policy_routing_policy_rule_rule_definition_action.dart';
import 'get_core_network_policy_document_routing_policy_routing_policy_rule_rule_definition_match_condition.dart';

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition {
  /// Block defining the action to take when conditions match. Detailed below.
  final pulumi.Input<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction> action;
  /// Logic to apply when multiple match conditions are present. Valid values: `and`, `or`.
  final pulumi.Input<String>? conditionLogic;
  /// List of conditions to match against routes. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition>>? matchConditions;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition].
  /// [action] Block defining the action to take when conditions match. Detailed below.
  /// [conditionLogic] Logic to apply when multiple match conditions are present. Valid values: `and`, `or`.
  /// [matchConditions] List of conditions to match against routes. Detailed below.
  const GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition({
    required this.action,
    this.conditionLogic,
    this.matchConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'conditionLogic': ?conditionLogic,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinition(
      action: pulumi.Input.fromValue(GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      conditionLogic: (() { final guardedValue = map['conditionLogic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition>(guardedValue, (value) => GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
