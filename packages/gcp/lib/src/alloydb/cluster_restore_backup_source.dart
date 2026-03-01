// ignore_for_file: unused_element, unnecessary_cast

class ClusterRestoreBackupSource {
  /// The name of the backup that this cluster is restored from.
  final String backupName;

  /// Creates a new [ClusterRestoreBackupSource].
  /// [backupName] The name of the backup that this cluster is restored from.
  ClusterRestoreBackupSource({required this.backupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'backupName': backupName};
  }

  factory ClusterRestoreBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreBackupSource(backupName: map['backupName'] as String);
  }
}
