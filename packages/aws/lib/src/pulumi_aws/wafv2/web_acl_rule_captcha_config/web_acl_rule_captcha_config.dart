// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_captcha_config_immunity_time_property/web_acl_rule_captcha_config_immunity_time_property.dart';

class WebAclRuleCaptchaConfig {
  /// Defines custom immunity time. See <span pulumi-lang-nodejs="`immunityTimeProperty`" pulumi-lang-dotnet="`ImmunityTimeProperty`" pulumi-lang-go="`immunityTimeProperty`" pulumi-lang-python="`immunity_time_property`" pulumi-lang-yaml="`immunityTimeProperty`" pulumi-lang-java="`immunityTimeProperty`">`immunity_time_property`</span> below for details.
  final WebAclRuleCaptchaConfigImmunityTimeProperty? immunityTimeProperty;

  WebAclRuleCaptchaConfig({
    this.immunityTimeProperty,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final immunityTimePropertyValue = immunityTimeProperty;
    if (immunityTimePropertyValue != null) {
      map['immunityTimeProperty'] = immunityTimePropertyValue.toMap();
    }
    return map;
  }

  factory WebAclRuleCaptchaConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleCaptchaConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null
          ? null
          : WebAclRuleCaptchaConfigImmunityTimeProperty.fromMap(
              (map['immunityTimeProperty'] as Map).cast<String, dynamic>()),
    );
  }
}
