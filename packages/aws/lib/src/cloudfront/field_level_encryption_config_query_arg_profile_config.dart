// ignore_for_file: unused_element, unnecessary_cast

import 'field_level_encryption_config_query_arg_profile_config_query_arg_profiles.dart';

class FieldLevelEncryptionConfigQueryArgProfileConfig {
  /// Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.
  final bool forwardWhenQueryArgProfileIsUnknown;
  /// Object that contains an attribute `items` that contains the list ofrofiles specified for query argument-profile mapping for field-level encryption. see Query Arg Profile.
  final FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles? queryArgProfiles;

  /// Creates a new [FieldLevelEncryptionConfigQueryArgProfileConfig].
  /// [forwardWhenQueryArgProfileIsUnknown] Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.
  /// [queryArgProfiles] Object that contains an attribute `items` that contains the list ofrofiles specified for query argument-profile mapping for field-level encryption. see Query Arg Profile.
  FieldLevelEncryptionConfigQueryArgProfileConfig({
    required this.forwardWhenQueryArgProfileIsUnknown,
    this.queryArgProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardWhenQueryArgProfileIsUnknown': forwardWhenQueryArgProfileIsUnknown,
      'queryArgProfiles': ?queryArgProfiles == null ? null : queryArgProfiles!.toMap(),
    };
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfig(
      forwardWhenQueryArgProfileIsUnknown: map['forwardWhenQueryArgProfileIsUnknown'] as bool,
      queryArgProfiles: map['queryArgProfiles'] == null ? null : FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles.fromMap((map['queryArgProfiles'] as Map).cast<String, dynamic>()),
    );
  }
}

