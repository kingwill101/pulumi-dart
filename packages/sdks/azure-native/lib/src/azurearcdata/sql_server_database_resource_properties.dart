// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy.dart';
import 'sql_server_database_resource_properties_backup_information.dart';
import 'sql_server_database_resource_properties_database_options.dart';

/// The properties of Arc Sql Server database resource
class SqlServerDatabaseResourceProperties {
  final pulumi.Input<SqlServerDatabaseResourcePropertiesBackupInformation>? backupInformation;
  /// The backup profile for the SQL server.
  final pulumi.Input<BackupPolicy>? backupPolicy;
  /// Collation of the database.
  final pulumi.Input<String>? collationName;
  /// Compatibility level of the database
  final pulumi.Input<int>? compatibilityLevel;
  /// Database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. sourceDatabaseId and restorePointInTime must be specified.
  final pulumi.Input<String>? createMode;
  /// Total size in MB for the data (mdf and ndf) files for this database.
  final pulumi.Input<double>? dataFileSizeMB;
  /// Creation date of the database.
  final pulumi.Input<String>? databaseCreationDate;
  /// List of features that are enabled for the database
  final pulumi.Input<SqlServerDatabaseResourcePropertiesDatabaseOptions>? databaseOptions;
  /// Whether the database is read only or not.
  final pulumi.Input<bool>? isReadOnly;
  /// Total size in MB for the log (ldf) files for this database.
  final pulumi.Input<double>? logFileSizeMB;
  /// Status of the database.
  final pulumi.Input<String>? recoveryMode;
  /// Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String>? restorePointInTime;
  /// Size of the database.
  final pulumi.Input<double>? sizeMB;
  /// The name of the source database associated with create operation of this database.
  final pulumi.Input<String>? sourceDatabaseId;
  /// Space left of the database.
  final pulumi.Input<double>? spaceAvailableMB;
  /// State of the database.
  final pulumi.Input<String>? state;

  /// Creates a new [SqlServerDatabaseResourceProperties].
  /// [backupInformation] Optional.
  /// [backupPolicy] The backup profile for the SQL server.
  /// [collationName] Collation of the database.
  /// [compatibilityLevel] Compatibility level of the database
  /// [createMode] Database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. sourceDatabaseId and restorePointInTime must be specified.
  /// [dataFileSizeMB] Total size in MB for the data (mdf and ndf) files for this database.
  /// [databaseCreationDate] Creation date of the database.
  /// [databaseOptions] List of features that are enabled for the database
  /// [isReadOnly] Whether the database is read only or not.
  /// [logFileSizeMB] Total size in MB for the log (ldf) files for this database.
  /// [recoveryMode] Status of the database.
  /// [restorePointInTime] Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [sizeMB] Size of the database.
  /// [sourceDatabaseId] The name of the source database associated with create operation of this database.
  /// [spaceAvailableMB] Space left of the database.
  /// [state] State of the database.
  const SqlServerDatabaseResourceProperties({
    this.backupInformation,
    this.backupPolicy,
    this.collationName,
    this.compatibilityLevel,
    this.createMode,
    this.dataFileSizeMB,
    this.databaseCreationDate,
    this.databaseOptions,
    this.isReadOnly,
    this.logFileSizeMB,
    this.recoveryMode,
    this.restorePointInTime,
    this.sizeMB,
    this.sourceDatabaseId,
    this.spaceAvailableMB,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInformation': ?pulumi.Input.mapOptionalInputValue<SqlServerDatabaseResourcePropertiesBackupInformation, Map<String, dynamic>>(backupInformation, (value) => value.toMap()),
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'collationName': ?collationName,
      'compatibilityLevel': ?compatibilityLevel,
      'createMode': ?createMode,
      'dataFileSizeMB': ?dataFileSizeMB,
      'databaseCreationDate': ?databaseCreationDate,
      'databaseOptions': ?pulumi.Input.mapOptionalInputValue<SqlServerDatabaseResourcePropertiesDatabaseOptions, Map<String, dynamic>>(databaseOptions, (value) => value.toMap()),
      'isReadOnly': ?isReadOnly,
      'logFileSizeMB': ?logFileSizeMB,
      'recoveryMode': ?recoveryMode,
      'restorePointInTime': ?restorePointInTime,
      'sizeMB': ?sizeMB,
      'sourceDatabaseId': ?sourceDatabaseId,
      'spaceAvailableMB': ?spaceAvailableMB,
      'state': ?state,
    };
  }

  factory SqlServerDatabaseResourceProperties.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseResourceProperties(
      backupInformation: (() { final guardedValue = map['backupInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerDatabaseResourcePropertiesBackupInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupPolicy: (() { final guardedValue = map['backupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collationName: (() { final guardedValue = map['collationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityLevel: (() { final guardedValue = map['compatibilityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFileSizeMB: (() { final guardedValue = map['dataFileSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      databaseCreationDate: (() { final guardedValue = map['databaseCreationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseOptions: (() { final guardedValue = map['databaseOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerDatabaseResourcePropertiesDatabaseOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isReadOnly: (() { final guardedValue = map['isReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logFileSizeMB: (() { final guardedValue = map['logFileSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      recoveryMode: (() { final guardedValue = map['recoveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeMB: (() { final guardedValue = map['sizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sourceDatabaseId: (() { final guardedValue = map['sourceDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceAvailableMB: (() { final guardedValue = map['spaceAvailableMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
