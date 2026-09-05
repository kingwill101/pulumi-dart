// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_captcha_custom_request_handling.dart';

class WebAclRuleActionCaptcha {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleActionCaptchaCustomRequestHandling?>? customRequestHandling;

  /// Creates a new [WebAclRuleActionCaptcha].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleActionCaptcha({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionCaptchaCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionCaptcha.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCaptcha(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionCaptchaCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
