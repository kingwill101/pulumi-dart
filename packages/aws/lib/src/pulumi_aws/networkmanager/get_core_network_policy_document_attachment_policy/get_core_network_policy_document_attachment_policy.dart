// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_core_network_policy_document_attachment_policy_action/get_core_network_policy_document_attachment_policy_action.dart';
import '../get_core_network_policy_document_attachment_policy_condition/get_core_network_policy_document_attachment_policy_condition.dart';

class GetCoreNetworkPolicyDocumentAttachmentPolicy {
  /// Action to take when a condition is true. Detailed Below.
  final GetCoreNetworkPolicyDocumentAttachmentPolicyAction action;

  /// Valid values include <span pulumi-lang-nodejs="`and`" pulumi-lang-dotnet="`And`" pulumi-lang-go="`and`" pulumi-lang-python="`and`" pulumi-lang-yaml="`and`" pulumi-lang-java="`and`">`and`</span> or <span pulumi-lang-nodejs="`or`" pulumi-lang-dotnet="`Or`" pulumi-lang-go="`or`" pulumi-lang-python="`or`" pulumi-lang-yaml="`or`" pulumi-lang-java="`or`">`or`</span>. This is a mandatory parameter only if you have more than one condition. The <span pulumi-lang-nodejs="`conditionLogic`" pulumi-lang-dotnet="`ConditionLogic`" pulumi-lang-go="`conditionLogic`" pulumi-lang-python="`condition_logic`" pulumi-lang-yaml="`conditionLogic`" pulumi-lang-java="`conditionLogic`">`condition_logic`</span> apply to all of the conditions for a rule, which also means nested conditions of <span pulumi-lang-nodejs="`and`" pulumi-lang-dotnet="`And`" pulumi-lang-go="`and`" pulumi-lang-python="`and`" pulumi-lang-yaml="`and`" pulumi-lang-java="`and`">`and`</span> or <span pulumi-lang-nodejs="`or`" pulumi-lang-dotnet="`Or`" pulumi-lang-go="`or`" pulumi-lang-python="`or`" pulumi-lang-yaml="`or`" pulumi-lang-java="`or`">`or`</span> are not supported. Use <span pulumi-lang-nodejs="`or`" pulumi-lang-dotnet="`Or`" pulumi-lang-go="`or`" pulumi-lang-python="`or`" pulumi-lang-yaml="`or`" pulumi-lang-java="`or`">`or`</span> if you want to associate the attachment with the segment by either the segment name or attachment tag value, or by the chosen conditions. Use <span pulumi-lang-nodejs="`and`" pulumi-lang-dotnet="`And`" pulumi-lang-go="`and`" pulumi-lang-python="`and`" pulumi-lang-yaml="`and`" pulumi-lang-java="`and`">`and`</span> if you want to associate the attachment with the segment by either the segment name or attachment tag value and by the chosen conditions. Detailed Below.
  final String? conditionLogic;

  /// A block argument. Detailed Below.
  final List<GetCoreNetworkPolicyDocumentAttachmentPolicyCondition> conditions;

  /// A user-defined description that further helps identify the rule.
  final String? description;

  /// An integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span> indicating the rule's order number. Rules are processed in order from the lowest numbered rule to the highest. Rules stop processing when a rule is matched. It's important to make sure that you number your rules in the exact order that you want them processed.
  final int ruleNumber;

  GetCoreNetworkPolicyDocumentAttachmentPolicy({
    required this.action,
    this.conditionLogic,
    required this.conditions,
    this.description,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final conditionLogicValue = conditionLogic;
    if (conditionLogicValue != null) {
      map['conditionLogic'] = conditionLogicValue;
    }
    map['conditions'] = Input.encodeList<
        GetCoreNetworkPolicyDocumentAttachmentPolicyCondition,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['ruleNumber'] = ruleNumber;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicy(
      action: GetCoreNetworkPolicyDocumentAttachmentPolicyAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      conditionLogic: map['conditionLogic'] == null
          ? null
          : map['conditionLogic'] as String,
      conditions: Input.decodeList<
              GetCoreNetworkPolicyDocumentAttachmentPolicyCondition>(
          map['conditions'],
          (value) =>
              GetCoreNetworkPolicyDocumentAttachmentPolicyCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
