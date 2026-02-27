// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block_custom_response/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block_custom_response.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock {
  /// Defines a custom response for the web request. See `custom_response` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse?
      customResponse;

  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock({
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

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock(
      customResponse: map['customResponse'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse
              .fromMap((map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}
