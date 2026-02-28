// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_block_custom_response.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock {
  /// Custom response for blocked requests. See below.
  final WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse?
      customResponse;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock].
  /// [customResponse] Custom response for blocked requests. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customResponseValue = customResponse;
    if (customResponseValue != null) {
      map['customResponse'] = customResponseValue.toMap();
    }
    return map;
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock(
      customResponse: map['customResponse'] == null
          ? null
          : WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse
              .fromMap((map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}
