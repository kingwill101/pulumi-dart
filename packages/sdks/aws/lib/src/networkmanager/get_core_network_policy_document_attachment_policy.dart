// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_attachment_policy_action.dart';
import 'get_core_network_policy_document_attachment_policy_condition.dart';

class GetCoreNetworkPolicyDocumentAttachmentPolicy {
  /// Action to take when a condition is true. Detailed Below.
  final pulumi.Input<GetCoreNetworkPolicyDocumentAttachmentPolicyAction> action;
  /// Valid values include `and` or `or`. This is a mandatory parameter only if you have more than one condition. The `condition_logic` apply to all of the conditions for a rule, which also means nested conditions of `and` or `or` are not supported. Use `or` if you want to associate the attachment with the segment by either the segment name or attachment tag value, or by the chosen conditions. Use `and` if you want to associate the attachment with the segment by either the segment name or attachment tag value and by the chosen conditions. Detailed Below.
  final pulumi.Input<String>? conditionLogic;
  /// A block argument. Detailed Below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentAttachmentPolicyCondition>> conditions;
  /// A user-defined description that further helps identify the rule.
  final pulumi.Input<String>? description;
  /// An integer from `1` to `65535` indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched. It's important to make sure that you number your rules in the exact order that you want them processed.
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentPolicy].
  /// [action] Action to take when a condition is true. Detailed Below.
  /// [conditionLogic] Valid values include `and` or `or`. This is a mandatory parameter only if you have more than one condition. The `condition_logic` apply to all of the conditions for a rule, which also means nested conditions of `and` or `or` are not supported. Use `or` if you want to associate the attachment with the segment by either the segment name or attachment tag value, or by the chosen conditions. Use `and` if you want to associate the attachment with the segment by either the segment name or attachment tag value and by the chosen conditions. Detailed Below.
  /// [conditions] A block argument. Detailed Below.
  /// [description] A user-defined description that further helps identify the rule.
  /// [ruleNumber] An integer from `1` to `65535` indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched. It's important to make sure that you number your rules in the exact order that you want them processed.
  GetCoreNetworkPolicyDocumentAttachmentPolicy({
    required this.action,
    this.conditionLogic,
    required this.conditions,
    this.description,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GetCoreNetworkPolicyDocumentAttachmentPolicyAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'conditionLogic': ?conditionLogic,
      'conditions': pulumi.Input.mapInputValue<List<GetCoreNetworkPolicyDocumentAttachmentPolicyCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentAttachmentPolicyCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicy.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicy(
      action: (GetCoreNetworkPolicyDocumentAttachmentPolicyAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      conditionLogic: map['conditionLogic'] == null ? null : (map['conditionLogic'] as String).input(),
      conditions: (pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentAttachmentPolicyCondition>(map['conditions'], (value) => GetCoreNetworkPolicyDocumentAttachmentPolicyCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ruleNumber: (map['ruleNumber'] as int).input(),
    );
  }
}

