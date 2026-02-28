// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_count_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling?
      customRequestHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount({
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

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
