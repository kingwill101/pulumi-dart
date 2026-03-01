// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_count_custom_request_handling.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCountCustomRequestHandling? customRequestHandling;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null ? null : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount(
      customRequestHandling: map['customRequestHandling'] == null ? null : WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCountCustomRequestHandling.fromMap((map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}

