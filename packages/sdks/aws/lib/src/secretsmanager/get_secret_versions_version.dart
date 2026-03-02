// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretVersionsVersion {
  /// Date and time this version of the secret was created.
  final pulumi.Input<String> createdTime;
  /// Date that this version of the secret was last accessed.
  final pulumi.Input<String> lastAccessedDate;
  /// Unique version identifier of this version of the secret.
  final pulumi.Input<String> versionId;
  /// List of staging labels attached to the version.
  final pulumi.Input<List<String>> versionStages;

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
      createdTime: (map['createdTime'] as String).input(),
      lastAccessedDate: (map['lastAccessedDate'] as String).input(),
      versionId: (map['versionId'] as String).input(),
      versionStages: ((map['versionStages'] as List).cast<String>()).input(),
    );
  }
}

