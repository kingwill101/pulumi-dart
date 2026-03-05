// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlServerDatabaseResourcePropertiesBackupInformation {
  /// Date time of last full backup.
  final pulumi.Input<String>? lastFullBackup;
  /// Date time of last log backup.
  final pulumi.Input<String>? lastLogBackup;

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
      lastFullBackup: (() { final guardedValue = map['lastFullBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastLogBackup: (() { final guardedValue = map['lastLogBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

