// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_core_network_policy_document_attachment_routing_policy_rule_action/get_core_network_policy_document_attachment_routing_policy_rule_action.dart';
import '../get_core_network_policy_document_attachment_routing_policy_rule_condition/get_core_network_policy_document_attachment_routing_policy_rule_condition.dart';

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

  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule({
    required this.action,
    required this.conditions,
    this.description,
    this.edgeLocations,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['conditions'] = Input.encodeList<
        GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final edgeLocationsValue = edgeLocations;
    if (edgeLocationsValue != null) {
      map['edgeLocations'] = edgeLocationsValue;
    }
    map['ruleNumber'] = ruleNumber;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule(
      action:
          GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      conditions: Input.decodeList<
              GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition>(
          map['conditions'],
          (value) =>
              GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition
                  .fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      edgeLocations: map['edgeLocations'] == null
          ? null
          : (map['edgeLocations'] as List).cast<String>(),
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
