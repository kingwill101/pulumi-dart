// ignore_for_file: unused_element, unnecessary_cast

class GetClusterRestoreBackupSource {
  /// The name of the backup that this cluster is restored from.
  final String backupName;

  GetClusterRestoreBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupName'] = backupName;
    return map;
  }

  factory GetClusterRestoreBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterRestoreBackupSource(
      backupName: map['backupName'] as String,
    );
  }
}
