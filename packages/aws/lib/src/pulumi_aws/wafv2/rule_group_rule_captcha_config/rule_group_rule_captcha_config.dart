// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_captcha_config_immunity_time_property/rule_group_rule_captcha_config_immunity_time_property.dart';

class RuleGroupRuleCaptchaConfig {
  /// Defines custom immunity time. See Immunity Time Property below for details.
  final RuleGroupRuleCaptchaConfigImmunityTimeProperty? immunityTimeProperty;

  RuleGroupRuleCaptchaConfig({
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

  factory RuleGroupRuleCaptchaConfig.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleCaptchaConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null
          ? null
          : RuleGroupRuleCaptchaConfigImmunityTimeProperty.fromMap(
              (map['immunityTimeProperty'] as Map).cast<String, dynamic>()),
    );
  }
}
