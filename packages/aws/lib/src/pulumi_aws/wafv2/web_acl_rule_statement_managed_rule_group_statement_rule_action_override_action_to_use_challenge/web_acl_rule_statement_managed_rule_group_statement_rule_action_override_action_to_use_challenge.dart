// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge_custom_request_handling/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge {
  /// Defines custom handling for the web request. See <span pulumi-lang-nodejs="`customRequestHandling`" pulumi-lang-dotnet="`CustomRequestHandling`" pulumi-lang-go="`customRequestHandling`" pulumi-lang-python="`custom_request_handling`" pulumi-lang-yaml="`customRequestHandling`" pulumi-lang-java="`customRequestHandling`">`custom_request_handling`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling?
      customRequestHandling;

  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge({
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

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
