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

  /// An integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span> indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched.
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
