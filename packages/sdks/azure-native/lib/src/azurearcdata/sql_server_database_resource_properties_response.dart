// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_response.dart';
import 'data_base_migration_response.dart';
import 'sql_server_database_resource_properties_response_backup_information.dart';
import 'sql_server_database_resource_properties_response_database_options.dart';

/// The properties of Arc Sql Server database resource
class SqlServerDatabaseResourcePropertiesResponse {
  final pulumi.Input<SqlServerDatabaseResourcePropertiesResponseBackupInformation>? backupInformation;
  /// The backup profile for the SQL server.
  final pulumi.Input<BackupPolicyResponse>? backupPolicy;
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
  final pulumi.Input<SqlServerDatabaseResourcePropertiesResponseDatabaseOptions>? databaseOptions;
  /// This records the earliest start date and time that restore is available for this database (ISO8601 format).
  final pulumi.Input<String> earliestRestoreDate;
  /// Whether the database is read only or not.
  final pulumi.Input<bool>? isReadOnly;
  /// The time when last successful database upload was performed.
  final pulumi.Input<String> lastDatabaseUploadTime;
  /// Total size in MB for the log (ldf) files for this database.
  final pulumi.Input<double>? logFileSizeMB;
  /// Migration related configuration.
  final pulumi.Input<DataBaseMigrationResponse>? migration;
  /// The provisioning state of the Arc-enabled SQL Server database resource.
  final pulumi.Input<String> provisioningState;
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
  /// The unique ID of the hybrid machine that this resource belongs to.
  final pulumi.Input<String> vmId;

  /// Creates a new [SqlServerDatabaseResourcePropertiesResponse].
  /// [backupInformation] Optional.
  /// [backupPolicy] The backup profile for the SQL server.
  /// [collationName] Collation of the database.
  /// [compatibilityLevel] Compatibility level of the database
  /// [createMode] Database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. sourceDatabaseId and restorePointInTime must be specified.
  /// [dataFileSizeMB] Total size in MB for the data (mdf and ndf) files for this database.
  /// [databaseCreationDate] Creation date of the database.
  /// [databaseOptions] List of features that are enabled for the database
  /// [earliestRestoreDate] This records the earliest start date and time that restore is available for this database (ISO8601 format).
  /// [isReadOnly] Whether the database is read only or not.
  /// [lastDatabaseUploadTime] The time when last successful database upload was performed.
  /// [logFileSizeMB] Total size in MB for the log (ldf) files for this database.
  /// [migration] Migration related configuration.
  /// [provisioningState] The provisioning state of the Arc-enabled SQL Server database resource.
  /// [recoveryMode] Status of the database.
  /// [restorePointInTime] Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [sizeMB] Size of the database.
  /// [sourceDatabaseId] The name of the source database associated with create operation of this database.
  /// [spaceAvailableMB] Space left of the database.
  /// [state] State of the database.
  /// [vmId] The unique ID of the hybrid machine that this resource belongs to.
  SqlServerDatabaseResourcePropertiesResponse({
    this.backupInformation,
    this.backupPolicy,
    this.collationName,
    this.compatibilityLevel,
    this.createMode,
    this.dataFileSizeMB,
    this.databaseCreationDate,
    this.databaseOptions,
    required this.earliestRestoreDate,
    this.isReadOnly,
    required this.lastDatabaseUploadTime,
    this.logFileSizeMB,
    this.migration,
    required this.provisioningState,
    this.recoveryMode,
    this.restorePointInTime,
    this.sizeMB,
    this.sourceDatabaseId,
    this.spaceAvailableMB,
    this.state,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInformation': ?pulumi.Input.mapOptionalInputValue<SqlServerDatabaseResourcePropertiesResponseBackupInformation, Map<String, dynamic>>(backupInformation, (value) => value.toMap()),
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicyResponse, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'collationName': ?collationName,
      'compatibilityLevel': ?compatibilityLevel,
      'createMode': ?createMode,
      'dataFileSizeMB': ?dataFileSizeMB,
      'databaseCreationDate': ?databaseCreationDate,
      'databaseOptions': ?pulumi.Input.mapOptionalInputValue<SqlServerDatabaseResourcePropertiesResponseDatabaseOptions, Map<String, dynamic>>(databaseOptions, (value) => value.toMap()),
      'earliestRestoreDate': earliestRestoreDate,
      'isReadOnly': ?isReadOnly,
      'lastDatabaseUploadTime': lastDatabaseUploadTime,
      'logFileSizeMB': ?logFileSizeMB,
      'migration': ?pulumi.Input.mapOptionalInputValue<DataBaseMigrationResponse, Map<String, dynamic>>(migration, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'recoveryMode': ?recoveryMode,
      'restorePointInTime': ?restorePointInTime,
      'sizeMB': ?sizeMB,
      'sourceDatabaseId': ?sourceDatabaseId,
      'spaceAvailableMB': ?spaceAvailableMB,
      'state': ?state,
      'vmId': vmId,
    };
  }

  factory SqlServerDatabaseResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseResourcePropertiesResponse(
      backupInformation: (() { final guardedValue = map['backupInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerDatabaseResourcePropertiesResponseBackupInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupPolicy: (() { final guardedValue = map['backupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collationName: (() { final guardedValue = map['collationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityLevel: (() { final guardedValue = map['compatibilityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFileSizeMB: (() { final guardedValue = map['dataFileSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      databaseCreationDate: (() { final guardedValue = map['databaseCreationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseOptions: (() { final guardedValue = map['databaseOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerDatabaseResourcePropertiesResponseDatabaseOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      earliestRestoreDate: pulumi.Input.fromValue(map['earliestRestoreDate'] as String),
      isReadOnly: (() { final guardedValue = map['isReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastDatabaseUploadTime: pulumi.Input.fromValue(map['lastDatabaseUploadTime'] as String),
      logFileSizeMB: (() { final guardedValue = map['logFileSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      migration: (() { final guardedValue = map['migration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataBaseMigrationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      recoveryMode: (() { final guardedValue = map['recoveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeMB: (() { final guardedValue = map['sizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sourceDatabaseId: (() { final guardedValue = map['sourceDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceAvailableMB: (() { final guardedValue = map['spaceAvailableMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmId: pulumi.Input.fromValue(map['vmId'] as String),
    );
  }
}

