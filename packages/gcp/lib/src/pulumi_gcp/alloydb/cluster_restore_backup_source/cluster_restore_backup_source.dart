// ignore_for_file: unused_element, unnecessary_cast

class ClusterRestoreBackupSource {
  /// The name of the backup that this cluster is restored from.
  final String backupName;

  ClusterRestoreBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupName'] = backupName;
    return map;
  }

  factory ClusterRestoreBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreBackupSource(
      backupName: map['backupName'] as String,
    );
  }
}
