// ignore_for_file: unused_element, unnecessary_cast

class ClusterBackupSource {
  /// The name of the backup resource.
  final String? backupName;

  ClusterBackupSource({
    this.backupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupNameValue = backupName;
    if (backupNameValue != null) {
      map['backupName'] = backupNameValue;
    }
    return map;
  }

  factory ClusterBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterBackupSource(
      backupName:
          map['backupName'] == null ? null : map['backupName'] as String,
    );
  }
}
