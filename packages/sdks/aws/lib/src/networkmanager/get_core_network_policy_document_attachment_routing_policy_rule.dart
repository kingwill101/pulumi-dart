// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_attachment_routing_policy_rule_action.dart';
import 'get_core_network_policy_document_attachment_routing_policy_rule_condition.dart';

class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule {
  /// Block defining the action to take when conditions match. Detailed below.
  final pulumi.Input<
    GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction
  >
  action;

  /// A block argument. Detailed below.
  final pulumi.Input<
    List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition>
  >
  conditions;

  /// A user-defined description that further helps identify the rule.
  final pulumi.Input<String>? description;

  /// A set of AWS Region codes where this rule applies.
  final pulumi.Input<List<String>>? edgeLocations;

  /// An integer from `1` to `65535` indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched.
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule].
  /// [action] Block defining the action to take when conditions match. Detailed below.
  /// [conditions] A block argument. Detailed below.
  /// [description] A user-defined description that further helps identify the rule.
  /// [edgeLocations] A set of AWS Region codes where this rule applies.
  /// [ruleNumber] An integer from `1` to `65535` indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched.
  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule({
    required this.action,
    required this.conditions,
    this.description,
    this.edgeLocations,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'conditions':
          pulumi.Input.mapInputValue<
            List<
              GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition
            >,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'edgeLocations': ?edgeLocations,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule(
      action: pulumi.Input.fromValue(
        GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction.fromMap(
          (map['action']! as Map).cast<String, dynamic>(),
        ),
      ),
      conditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition
        >(
          map['conditions']!,
          (value) =>
              GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgeLocations: (() {
        final guardedValue = map['edgeLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ruleNumber: pulumi.Input.fromValue(map['ruleNumber'] as int),
    );
  }
}
