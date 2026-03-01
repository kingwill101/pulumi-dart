// ignore_for_file: unused_element, unnecessary_cast


class SqlServerDatabaseResourcePropertiesBackupInformation {
  /// Date time of last full backup.
  final String? lastFullBackup;
  /// Date time of last log backup.
  final String? lastLogBackup;

  /// Creates a new [SqlServerDatabaseResourcePropertiesBackupInformation].
  /// [lastFullBackup] Date time of last full backup.
  /// [lastLogBackup] Date time of last log backup.
  SqlServerDatabaseResourcePropertiesBackupInformation({
    this.lastFullBackup,
    this.lastLogBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastFullBackup': ?lastFullBackup,
      'lastLogBackup': ?lastLogBackup,
    };
  }

  factory SqlServerDatabaseResourcePropertiesBackupInformation.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseResourcePropertiesBackupInformation(
      lastFullBackup: map['lastFullBackup'] == null ? null : map['lastFullBackup'] as String,
      lastLogBackup: map['lastLogBackup'] == null ? null : map['lastLogBackup'] as String,
    );
  }
}

