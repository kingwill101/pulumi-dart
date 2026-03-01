// ignore_for_file: unused_element, unnecessary_cast


class WebAclCaptchaConfigImmunityTimeProperty {
  /// The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  final int? immunityTime;

  /// Creates a new [WebAclCaptchaConfigImmunityTimeProperty].
  /// [immunityTime] The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  WebAclCaptchaConfigImmunityTimeProperty({
    this.immunityTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTime': ?immunityTime,
    };
  }

  factory WebAclCaptchaConfigImmunityTimeProperty.fromMap(Map<String, dynamic> map) {
    return WebAclCaptchaConfigImmunityTimeProperty(
      immunityTime: map['immunityTime'] == null ? null : map['immunityTime'] as int,
    );
  }
}

