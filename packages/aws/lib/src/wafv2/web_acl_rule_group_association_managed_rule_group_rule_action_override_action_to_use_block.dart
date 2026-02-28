// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_block_custom_response.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock {
  /// Custom response for blocked requests. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse? customResponse;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock].
  /// [customResponse] Custom response for blocked requests. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse': ?customResponse == null ? null : customResponse!.toMap(),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock(
      customResponse: map['customResponse'] == null ? null : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse.fromMap((map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}

