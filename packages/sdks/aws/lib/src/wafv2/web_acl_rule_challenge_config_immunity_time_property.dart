// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleChallengeConfigImmunityTimeProperty {
  /// The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  final pulumi.Input<int>? immunityTime;

  /// Creates a new [WebAclRuleChallengeConfigImmunityTimeProperty].
  /// [immunityTime] The amount of time, in seconds, that a CAPTCHA or challenge timestamp is considered valid by AWS WAF. The default setting is 300.
  WebAclRuleChallengeConfigImmunityTimeProperty({
    this.immunityTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTime': ?immunityTime,
    };
  }

  factory WebAclRuleChallengeConfigImmunityTimeProperty.fromMap(Map<String, dynamic> map) {
    return WebAclRuleChallengeConfigImmunityTimeProperty(
      immunityTime: map['immunityTime'] == null ? null : (map['immunityTime'] as int).input(),
    );
  }
}

