// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_challenge_config_immunity_time_property/web_acl_rule_challenge_config_immunity_time_property.dart';

class WebAclRuleChallengeConfig {
  /// Defines custom immunity time. See `immunity_time_property` below for details.
  final WebAclRuleChallengeConfigImmunityTimeProperty? immunityTimeProperty;

  WebAclRuleChallengeConfig({
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

  factory WebAclRuleChallengeConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleChallengeConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null
          ? null
          : WebAclRuleChallengeConfigImmunityTimeProperty.fromMap(
              (map['immunityTimeProperty'] as Map).cast<String, dynamic>()),
    );
  }
}
