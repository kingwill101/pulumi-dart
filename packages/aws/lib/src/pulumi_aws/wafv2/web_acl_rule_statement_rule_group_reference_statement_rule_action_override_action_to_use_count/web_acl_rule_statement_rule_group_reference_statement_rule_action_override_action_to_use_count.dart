// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_count_custom_request_handling/web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_count_custom_request_handling.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCountCustomRequestHandling?
      customRequestHandling;

  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRequestHandlingValue = customRequestHandling;
    if (customRequestHandlingValue != null) {
      map['customRequestHandling'] = customRequestHandlingValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCountCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
