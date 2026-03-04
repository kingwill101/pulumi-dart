// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_challenge_config_immunity_time_property.dart';

class WebAclRuleChallengeConfig {
  /// Defines custom immunity time. See `immunity_time_property` below for details.
  final pulumi.Input<WebAclRuleChallengeConfigImmunityTimeProperty>?
  immunityTimeProperty;

  /// Creates a new [WebAclRuleChallengeConfig].
  /// [immunityTimeProperty] Defines custom immunity time. See `immunity_time_property` below for details.
  WebAclRuleChallengeConfig({this.immunityTimeProperty});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTimeProperty':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleChallengeConfigImmunityTimeProperty,
            Map<String, dynamic>
          >(immunityTimeProperty, (value) => value.toMap()),
    };
  }

  factory WebAclRuleChallengeConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleChallengeConfig(
      immunityTimeProperty: (() {
        final guardedValue = map['immunityTimeProperty'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleChallengeConfigImmunityTimeProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
