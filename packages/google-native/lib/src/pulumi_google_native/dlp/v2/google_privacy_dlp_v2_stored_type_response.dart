// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a StoredInfoType to use with scanning.
class GooglePrivacyDlpV2StoredTypeResponse {
  /// Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  final String createTime;

  /// Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  final String name;

  GooglePrivacyDlpV2StoredTypeResponse({
    required this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['name'] = name;
    return map;
  }

  factory GooglePrivacyDlpV2StoredTypeResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredTypeResponse(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
    );
  }
}
