// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_captcha_config_immunity_time_property.dart';

class WebAclRuleCaptchaConfig {
  /// Immunity time configuration. See Immunity Time Property below.
  final pulumi.Input<WebAclRuleCaptchaConfigImmunityTimeProperty>? immunityTimeProperty;

  /// Creates a new [WebAclRuleCaptchaConfig].
  /// [immunityTimeProperty] Immunity time configuration. See Immunity Time Property below.
  const WebAclRuleCaptchaConfig({
    this.immunityTimeProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTimeProperty': ?pulumi.Input.mapOptionalInputValue<WebAclRuleCaptchaConfigImmunityTimeProperty, Map<String, dynamic>>(immunityTimeProperty, (value) => value.toMap()),
    };
  }

  factory WebAclRuleCaptchaConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleCaptchaConfig(
      immunityTimeProperty: (() { final guardedValue = map['immunityTimeProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleCaptchaConfigImmunityTimeProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
