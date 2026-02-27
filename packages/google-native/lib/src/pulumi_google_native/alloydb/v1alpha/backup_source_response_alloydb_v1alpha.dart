// ignore_for_file: unused_element, unnecessary_cast

/// Message describing a BackupSource.
class BackupSourceResponseAlloydbV1alpha {
  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id}
  final String backupName;

  /// The system-generated UID of the backup which was used to create this resource. The UID is generated when the backup is created, and it is retained until the backup is deleted.
  final String backupUid;

  BackupSourceResponseAlloydbV1alpha({
    required this.backupName,
    required this.backupUid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupName'] = backupName;
    map['backupUid'] = backupUid;
    return map;
  }

  factory BackupSourceResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return BackupSourceResponseAlloydbV1alpha(
      backupName: map['backupName'] as String,
      backupUid: map['backupUid'] as String,
    );
  }
}
