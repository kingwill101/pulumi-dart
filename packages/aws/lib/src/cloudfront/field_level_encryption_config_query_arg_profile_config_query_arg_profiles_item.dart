// ignore_for_file: unused_element, unnecessary_cast

class FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem {
  final String profileId;

  /// Query argument for field-level encryption query argument-profile mapping.
  final String queryArg;

  /// Creates a new [FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem].
  /// [profileId] Required.
  /// [queryArg] Query argument for field-level encryption query argument-profile mapping.
  FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem({
    required this.profileId,
    required this.queryArg,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profileId'] = profileId;
    map['queryArg'] = queryArg;
    return map;
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem(
      profileId: map['profileId'] as String,
      queryArg: map['queryArg'] as String,
    );
  }
}
