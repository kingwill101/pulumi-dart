// ignore_for_file: unused_element, unnecessary_cast

/// Information about a backup.
class BackupInfoResponseSpannerV1 {
  /// Name of the backup.
  final String backup;

  /// The time the CreateBackup request was received.
  final String createTime;

  /// Name of the database the backup was created from.
  final String sourceDatabase;

  /// The backup contains an externally consistent copy of `source_database` at the timestamp specified by `version_time`. If the CreateBackup request did not specify `version_time`, the `version_time` of the backup is equivalent to the `create_time`.
  final String versionTime;

  BackupInfoResponseSpannerV1({
    required this.backup,
    required this.createTime,
    required this.sourceDatabase,
    required this.versionTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    map['createTime'] = createTime;
    map['sourceDatabase'] = sourceDatabase;
    map['versionTime'] = versionTime;
    return map;
  }

  factory BackupInfoResponseSpannerV1.fromMap(Map<String, dynamic> map) {
    return BackupInfoResponseSpannerV1(
      backup: map['backup'] as String,
      createTime: map['createTime'] as String,
      sourceDatabase: map['sourceDatabase'] as String,
      versionTime: map['versionTime'] as String,
    );
  }
}
