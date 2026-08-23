// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_challenge_config_immunity_time_property.dart';

class WebAclChallengeConfig {
  /// Defines custom immunity time. See `immunityTimeProperty` below for details.
  final pulumi.Input<WebAclChallengeConfigImmunityTimeProperty>? immunityTimeProperty;

  /// Creates a new [WebAclChallengeConfig].
  /// [immunityTimeProperty] Defines custom immunity time. See `immunityTimeProperty` below for details.
  const WebAclChallengeConfig({
    this.immunityTimeProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTimeProperty': ?pulumi.Input.mapOptionalInputValue<WebAclChallengeConfigImmunityTimeProperty, Map<String, dynamic>>(immunityTimeProperty, (value) => value.toMap()),
    };
  }

  factory WebAclChallengeConfig.fromMap(Map<String, dynamic> map) {
    return WebAclChallengeConfig(
      immunityTimeProperty: (() { final guardedValue = map['immunityTimeProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclChallengeConfigImmunityTimeProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
