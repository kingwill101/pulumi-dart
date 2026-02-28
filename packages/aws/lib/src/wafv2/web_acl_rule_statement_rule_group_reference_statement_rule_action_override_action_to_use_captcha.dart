// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_captcha_custom_request_handling.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling?
      customRequestHandling;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha({
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

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
