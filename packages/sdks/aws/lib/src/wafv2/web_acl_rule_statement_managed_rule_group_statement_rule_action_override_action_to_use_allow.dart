// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_allow_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandling? customRequestHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null ? null : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow(
      customRequestHandling: map['customRequestHandling'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap((map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}

