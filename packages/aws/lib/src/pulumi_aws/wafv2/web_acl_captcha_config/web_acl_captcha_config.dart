// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_captcha_config_immunity_time_property/web_acl_captcha_config_immunity_time_property.dart';

class WebAclCaptchaConfig {
  /// Defines custom immunity time. See `immunity_time_property` below for details.
  final WebAclCaptchaConfigImmunityTimeProperty? immunityTimeProperty;

  WebAclCaptchaConfig({
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

  factory WebAclCaptchaConfig.fromMap(Map<String, dynamic> map) {
    return WebAclCaptchaConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null
          ? null
          : WebAclCaptchaConfigImmunityTimeProperty.fromMap(
              (map['immunityTimeProperty'] as Map).cast<String, dynamic>()),
    );
  }
}
