// ignore_for_file: unused_element, unnecessary_cast


class ClusterBackupSource {
  /// The name of the backup resource.
  final String? backupName;

  /// Creates a new [ClusterBackupSource].
  /// [backupName] The name of the backup resource.
  ClusterBackupSource({
    this.backupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
    };
  }

  factory ClusterBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterBackupSource(
      backupName: map['backupName'] == null ? null : map['backupName'] as String,
    );
  }
}

