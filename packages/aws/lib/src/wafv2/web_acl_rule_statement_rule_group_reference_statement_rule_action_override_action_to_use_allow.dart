// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow_custom_request_handling.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling?
  customRequestHandling;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null
          ? null
          : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
