// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_action_captcha_custom_request_handling.dart';

class WebAclRuleActionCaptcha {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleActionCaptchaCustomRequestHandling? customRequestHandling;

  /// Creates a new [WebAclRuleActionCaptcha].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleActionCaptcha({
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

  factory WebAclRuleActionCaptcha.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCaptcha(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleActionCaptchaCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}
