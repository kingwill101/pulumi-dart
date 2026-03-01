// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_challenge_config_immunity_time_property.dart';

class WebAclChallengeConfig {
  /// Defines custom immunity time. See `immunity_time_property` below for details.
  final WebAclChallengeConfigImmunityTimeProperty? immunityTimeProperty;

  /// Creates a new [WebAclChallengeConfig].
  /// [immunityTimeProperty] Defines custom immunity time. See `immunity_time_property` below for details.
  WebAclChallengeConfig({this.immunityTimeProperty});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immunityTimeProperty': ?immunityTimeProperty == null
          ? null
          : immunityTimeProperty!.toMap(),
    };
  }

  factory WebAclChallengeConfig.fromMap(Map<String, dynamic> map) {
    return WebAclChallengeConfig(
      immunityTimeProperty: map['immunityTimeProperty'] == null
          ? null
          : WebAclChallengeConfigImmunityTimeProperty.fromMap(
              (map['immunityTimeProperty'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
