// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleCaptchaConfigImmunityTimeProperty {
  /// The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  final pulumi.Input<int>? immunityTime;

  /// Creates a new [RuleGroupRuleCaptchaConfigImmunityTimeProperty].
  /// [immunityTime] The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  RuleGroupRuleCaptchaConfigImmunityTimeProperty({
    this.immunityTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTime': ?immunityTime,
    };
  }

  factory RuleGroupRuleCaptchaConfigImmunityTimeProperty.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleCaptchaConfigImmunityTimeProperty(
      immunityTime: map['immunityTime'] == null ? null : (map['immunityTime'] as int).input(),
    );
  }
}

