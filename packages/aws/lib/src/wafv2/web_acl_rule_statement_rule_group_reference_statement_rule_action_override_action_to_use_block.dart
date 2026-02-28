// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_block_custom_response.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock {
  /// Defines a custom response for the web request. See `custom_response` below for details.
  final WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponse? customResponse;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock].
  /// [customResponse] Defines a custom response for the web request. See `custom_response` below for details.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse': ?customResponse == null ? null : customResponse!.toMap(),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock(
      customResponse: map['customResponse'] == null ? null : WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponse.fromMap((map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}

