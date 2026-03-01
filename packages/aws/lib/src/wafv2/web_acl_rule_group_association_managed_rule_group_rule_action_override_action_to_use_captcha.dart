// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_captcha_custom_request_handling.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha {
  /// Custom handling for CAPTCHA requests. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling?
  customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha].
  /// [customRequestHandling] Custom handling for CAPTCHA requests. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null
          ? null
          : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
