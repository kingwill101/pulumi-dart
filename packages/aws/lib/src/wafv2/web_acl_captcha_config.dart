// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_captcha_config_immunity_time_property.dart';

class WebAclCaptchaConfig {
  /// Defines custom immunity time. See `immunity_time_property` below for details.
  final WebAclCaptchaConfigImmunityTimeProperty? immunityTimeProperty;

  /// Creates a new [WebAclCaptchaConfig].
  /// [immunityTimeProperty] Defines custom immunity time. See `immunity_time_property` below for details.
  WebAclCaptchaConfig({
    this.immunityTimeProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTimeProperty': ?immunityTimeProperty == null ? null : immunityTimeProperty!.toMap(),
    };
  }

  factory WebAclCaptchaConfig.fromMap(Map<String, dynamic> map) {
    return WebAclCaptchaConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null ? null : WebAclCaptchaConfigImmunityTimeProperty.fromMap((map['immunityTimeProperty'] as Map).cast<String, dynamic>()),
    );
  }
}

