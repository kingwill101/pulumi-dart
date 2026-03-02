// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem {
  final pulumi.Input<String> profileId;
  /// Query argument for field-level encryption query argument-profile mapping.
  final pulumi.Input<String> queryArg;

  /// Creates a new [FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem].
  /// [profileId] Required.
  /// [queryArg] Query argument for field-level encryption query argument-profile mapping.
  FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem({
    required this.profileId,
    required this.queryArg,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileId': profileId,
      'queryArg': queryArg,
    };
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem(
      profileId: (map['profileId'] as String).input(),
      queryArg: (map['queryArg'] as String).input(),
    );
  }
}

