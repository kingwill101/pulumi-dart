// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a StoredInfoType to use with scanning.
class GooglePrivacyDlpV2StoredType {
  /// Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  final String? createTime;

  /// Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  final String? name;

  /// Creates a new [GooglePrivacyDlpV2StoredType].
  /// [createTime] Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  /// [name] Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  GooglePrivacyDlpV2StoredType({
    this.createTime,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2StoredType.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredType(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
