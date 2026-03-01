// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_action_captcha_custom_request_handling.dart';

class RuleGroupRuleActionCaptcha {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final RuleGroupRuleActionCaptchaCustomRequestHandling? customRequestHandling;

  /// Creates a new [RuleGroupRuleActionCaptcha].
  /// [customRequestHandling] Defines custom handling for the web request. See Custom Request Handling below for details.
  RuleGroupRuleActionCaptcha({this.customRequestHandling});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null
          ? null
          : customRequestHandling!.toMap(),
    };
  }

  factory RuleGroupRuleActionCaptcha.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionCaptcha(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : RuleGroupRuleActionCaptchaCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
