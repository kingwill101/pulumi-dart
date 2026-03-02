// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlServerDatabaseResourcePropertiesResponseBackupInformation {
  /// Date time of last full backup.
  final pulumi.Input<String>? lastFullBackup;
  /// Date time of last log backup.
  final pulumi.Input<String>? lastLogBackup;

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
      lastFullBackup: map['lastFullBackup'] == null ? null : (map['lastFullBackup']! as String).input(),
      lastLogBackup: map['lastLogBackup'] == null ? null : (map['lastLogBackup']! as String).input(),
    );
  }
}

