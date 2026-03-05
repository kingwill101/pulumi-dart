// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_query_arg_profile_config_query_arg_profiles.dart';

class FieldLevelEncryptionConfigQueryArgProfileConfig {
  /// Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.
  final pulumi.Input<bool> forwardWhenQueryArgProfileIsUnknown;
  /// Object that contains an attribute `items` that contains the list ofrofiles specified for query argument-profile mapping for field-level encryption. see Query Arg Profile.
  final pulumi.Input<FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles>? queryArgProfiles;

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
      'queryArgProfiles': ?pulumi.Input.mapOptionalInputValue<FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles, Map<String, dynamic>>(queryArgProfiles, (value) => value.toMap()),
    };
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfig(
      forwardWhenQueryArgProfileIsUnknown: pulumi.Input.fromValue(map['forwardWhenQueryArgProfileIsUnknown'] as bool),
      queryArgProfiles: (() { final guardedValue = map['queryArgProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

