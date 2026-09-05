// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleCaptchaConfigImmunityTimeProperty {
  /// Immunity time in seconds (60-259200).
  final pulumi.Input<int?>? immunityTime;

  /// Creates a new [WebAclRuleCaptchaConfigImmunityTimeProperty].
  /// [immunityTime] Immunity time in seconds (60-259200).
  const WebAclRuleCaptchaConfigImmunityTimeProperty({
    this.immunityTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTime': ?immunityTime,
    };
  }

  factory WebAclRuleCaptchaConfigImmunityTimeProperty.fromMap(Map<String, dynamic> map) {
    return WebAclRuleCaptchaConfigImmunityTimeProperty(
      immunityTime: (() { final guardedValue = map['immunityTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
