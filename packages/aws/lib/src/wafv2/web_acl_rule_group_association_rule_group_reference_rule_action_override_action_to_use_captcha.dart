// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_captcha_custom_request_handling.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha {
  /// Custom handling for CAPTCHA requests. See below.
  final WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandling?
  customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha].
  /// [customRequestHandling] Custom handling for CAPTCHA requests. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null
          ? null
          : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
