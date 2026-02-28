// ignore_for_file: unused_element, unnecessary_cast

import 'db_system_properties_db_home_database_properties_database_management_config.dart';
import 'db_system_properties_db_home_database_properties_db_backup_config.dart';

class DbSystemPropertiesDbHomeDatabaseProperties {
  /// The configuration of the Database Management service.
  /// Structure is documented below.
  final DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig? databaseManagementConfig;
  /// Backup Options for the Database.
  /// Structure is documented below.
  final DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig? dbBackupConfig;
  /// The Oracle Database version.
  final String dbVersion;
  /// (Output)
  /// State of the Database.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// BACKUP_IN_PROGRESS
  /// UPGRADING
  /// CONVERTING
  /// TERMINATING
  /// TERMINATED
  /// RESTORE_FAILED
  /// FAILED
  final String? state;

  /// Creates a new [DbSystemPropertiesDbHomeDatabaseProperties].
  /// [databaseManagementConfig] The configuration of the Database Management service.
  /// [dbBackupConfig] Backup Options for the Database.
  /// [dbVersion] The Oracle Database version.
  /// [state] (Output)
  DbSystemPropertiesDbHomeDatabaseProperties({
    this.databaseManagementConfig,
    this.dbBackupConfig,
    required this.dbVersion,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseManagementConfig': ?databaseManagementConfig == null ? null : databaseManagementConfig!.toMap(),
      'dbBackupConfig': ?dbBackupConfig == null ? null : dbBackupConfig!.toMap(),
      'dbVersion': dbVersion,
      'state': ?state,
    };
  }

  factory DbSystemPropertiesDbHomeDatabaseProperties.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabaseProperties(
      databaseManagementConfig: map['databaseManagementConfig'] == null ? null : DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig.fromMap((map['databaseManagementConfig'] as Map).cast<String, dynamic>()),
      dbBackupConfig: map['dbBackupConfig'] == null ? null : DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig.fromMap((map['dbBackupConfig'] as Map).cast<String, dynamic>()),
      dbVersion: map['dbVersion'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

