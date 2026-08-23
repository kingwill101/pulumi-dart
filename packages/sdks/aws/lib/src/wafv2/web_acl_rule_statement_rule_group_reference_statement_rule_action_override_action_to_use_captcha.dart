// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_captcha_custom_request_handling.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling>? customRequestHandling;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
