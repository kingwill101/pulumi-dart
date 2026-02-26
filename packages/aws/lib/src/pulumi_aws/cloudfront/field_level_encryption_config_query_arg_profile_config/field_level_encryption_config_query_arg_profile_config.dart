// ignore_for_file: unused_element, unnecessary_cast

import '../field_level_encryption_config_query_arg_profile_config_query_arg_profiles/field_level_encryption_config_query_arg_profile_config_query_arg_profiles.dart';

class FieldLevelEncryptionConfigQueryArgProfileConfig {
  /// Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.
  final bool forwardWhenQueryArgProfileIsUnknown;

  /// Object that contains an attribute <span pulumi-lang-nodejs="`items`" pulumi-lang-dotnet="`Items`" pulumi-lang-go="`items`" pulumi-lang-python="`items`" pulumi-lang-yaml="`items`" pulumi-lang-java="`items`">`items`</span> that contains the list ofrofiles specified for query argument-profile mapping for field-level encryption. see Query Arg Profile.
  final FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles?
      queryArgProfiles;

  FieldLevelEncryptionConfigQueryArgProfileConfig({
    required this.forwardWhenQueryArgProfileIsUnknown,
    this.queryArgProfiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardWhenQueryArgProfileIsUnknown'] =
        forwardWhenQueryArgProfileIsUnknown;
    final queryArgProfilesValue = queryArgProfiles;
    if (queryArgProfilesValue != null) {
      map['queryArgProfiles'] = queryArgProfilesValue.toMap();
    }
    return map;
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfig(
      forwardWhenQueryArgProfileIsUnknown:
          map['forwardWhenQueryArgProfileIsUnknown'] as bool,
      queryArgProfiles: map['queryArgProfiles'] == null
          ? null
          : FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles
              .fromMap(
                  (map['queryArgProfiles'] as Map).cast<String, dynamic>()),
    );
  }
}
