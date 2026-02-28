// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_captcha_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling?
      customRequestHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha({
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

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
