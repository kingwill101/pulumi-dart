// ignore_for_file: unused_element, unnecessary_cast

class WebAclCaptchaConfigImmunityTimeProperty {
  /// The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  final int? immunityTime;

  WebAclCaptchaConfigImmunityTimeProperty({
    this.immunityTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final immunityTimeValue = immunityTime;
    if (immunityTimeValue != null) {
      map['immunityTime'] = immunityTimeValue;
    }
    return map;
  }

  factory WebAclCaptchaConfigImmunityTimeProperty.fromMap(
      Map<String, dynamic> map) {
    return WebAclCaptchaConfigImmunityTimeProperty(
      immunityTime:
          map['immunityTime'] == null ? null : map['immunityTime'] as int,
    );
  }
}
