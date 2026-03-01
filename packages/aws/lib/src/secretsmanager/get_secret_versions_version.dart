// ignore_for_file: unused_element, unnecessary_cast


class GetSecretVersionsVersion {
  /// Date and time this version of the secret was created.
  final String createdTime;
  /// Date that this version of the secret was last accessed.
  final String lastAccessedDate;
  /// Unique version identifier of this version of the secret.
  final String versionId;
  /// List of staging labels attached to the version.
  final List<String> versionStages;

  /// Creates a new [GetSecretVersionsVersion].
  /// [createdTime] Date and time this version of the secret was created.
  /// [lastAccessedDate] Date that this version of the secret was last accessed.
  /// [versionId] Unique version identifier of this version of the secret.
  /// [versionStages] List of staging labels attached to the version.
  GetSecretVersionsVersion({
    required this.createdTime,
    required this.lastAccessedDate,
    required this.versionId,
    required this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': createdTime,
      'lastAccessedDate': lastAccessedDate,
      'versionId': versionId,
      'versionStages': versionStages,
    };
  }

  factory GetSecretVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsVersion(
      createdTime: map['createdTime'] as String,
      lastAccessedDate: map['lastAccessedDate'] as String,
      versionId: map['versionId'] as String,
      versionStages: (map['versionStages'] as List).cast<String>(),
    );
  }
}

