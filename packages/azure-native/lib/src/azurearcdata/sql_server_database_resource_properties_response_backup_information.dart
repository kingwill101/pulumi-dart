// ignore_for_file: unused_element, unnecessary_cast


class SqlServerDatabaseResourcePropertiesResponseBackupInformation {
  /// Date time of last full backup.
  final String? lastFullBackup;
  /// Date time of last log backup.
  final String? lastLogBackup;

  /// Creates a new [SqlServerDatabaseResourcePropertiesResponseBackupInformation].
  /// [lastFullBackup] Date time of last full backup.
  /// [lastLogBackup] Date time of last log backup.
  SqlServerDatabaseResourcePropertiesResponseBackupInformation({
    this.lastFullBackup,
    this.lastLogBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastFullBackup': ?lastFullBackup,
      'lastLogBackup': ?lastLogBackup,
    };
  }

  factory SqlServerDatabaseResourcePropertiesResponseBackupInformation.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseResourcePropertiesResponseBackupInformation(
      lastFullBackup: map['lastFullBackup'] == null ? null : map['lastFullBackup'] as String,
      lastLogBackup: map['lastLogBackup'] == null ? null : map['lastLogBackup'] as String,
    );
  }
}

