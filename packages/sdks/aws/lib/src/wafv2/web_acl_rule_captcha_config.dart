// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_captcha_config_immunity_time_property.dart';

class WebAclRuleCaptchaConfig {
  /// Defines custom immunity time. See `immunity_time_property` below for details.
  final WebAclRuleCaptchaConfigImmunityTimeProperty? immunityTimeProperty;

  /// Creates a new [WebAclRuleCaptchaConfig].
  /// [immunityTimeProperty] Defines custom immunity time. See `immunity_time_property` below for details.
  WebAclRuleCaptchaConfig({
    this.immunityTimeProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTimeProperty': ?immunityTimeProperty == null ? null : immunityTimeProperty!.toMap(),
    };
  }

  factory WebAclRuleCaptchaConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleCaptchaConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null ? null : WebAclRuleCaptchaConfigImmunityTimeProperty.fromMap((map['immunityTimeProperty'] as Map).cast<String, dynamic>()),
    );
  }
}

