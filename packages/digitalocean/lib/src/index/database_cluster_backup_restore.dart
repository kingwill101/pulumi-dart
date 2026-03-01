// ignore_for_file: unused_element, unnecessary_cast


class DatabaseClusterBackupRestore {
  /// The timestamp of an existing database cluster backup in ISO8601 combined date and time format. The most recent backup will be used if excluded.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final String? backupCreatedAt;
  /// The name of an existing database cluster from which the backup will be restored.
  final String databaseName;

  /// Creates a new [DatabaseClusterBackupRestore].
  /// [backupCreatedAt] The timestamp of an existing database cluster backup in ISO8601 combined date and time format. The most recent backup will be used if excluded.
  /// [databaseName] The name of an existing database cluster from which the backup will be restored.
  DatabaseClusterBackupRestore({
    this.backupCreatedAt,
    required this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupCreatedAt': ?backupCreatedAt,
      'databaseName': databaseName,
    };
  }

  factory DatabaseClusterBackupRestore.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterBackupRestore(
      backupCreatedAt: map['backupCreatedAt'] == null ? null : map['backupCreatedAt'] as String,
      databaseName: map['databaseName'] as String,
    );
  }
}

