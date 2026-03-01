// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_attachment_routing_policy_rule_action.dart';
import 'get_core_network_policy_document_attachment_routing_policy_rule_condition.dart';

class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule {
  /// Block defining the action to take when conditions match. Detailed below.
  final GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction action;

  /// A block argument. Detailed below.
  final List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition>
  conditions;

  /// A user-defined description that further helps identify the rule.
  final String? description;

  /// A set of AWS Region codes where this rule applies.
  final List<String>? edgeLocations;

  /// An integer from `1` to `65535` indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched.
  final int ruleNumber;

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
      'action': action.toMap(),
      'conditions':
          pulumi.Input.encodeList<
            GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition,
            Map<String, dynamic>
          >(conditions, (value) => value.toMap()),
      'description': ?description,
      'edgeLocations': ?edgeLocations,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule(
      action:
          GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction.fromMap(
            (map['action'] as Map).cast<String, dynamic>(),
          ),
      conditions:
          pulumi.Input.decodeList<
            GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition
          >(
            map['conditions'],
            (value) =>
                GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      edgeLocations: map['edgeLocations'] == null
          ? null
          : (map['edgeLocations'] as List).cast<String>(),
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
