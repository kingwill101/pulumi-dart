// ignore_for_file: unused_element, unnecessary_cast


class GetClusterRestoreBackupSource {
  /// The name of the backup that this cluster is restored from.
  final String backupName;

  /// Creates a new [GetClusterRestoreBackupSource].
  /// [backupName] The name of the backup that this cluster is restored from.
  GetClusterRestoreBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
    };
  }

  factory GetClusterRestoreBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterRestoreBackupSource(
      backupName: map['backupName'] as String,
    );
  }
}

