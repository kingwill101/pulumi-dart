// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_share.dart';
import 'file_share.dart';
import 'migrate_sql_server_sql_midatabase_input.dart';
import 'sql_connection_info.dart';

/// Input for task that validates migration input for SQL to Azure SQL Managed Instance
class ValidateMigrationInputSqlServerSqlMITaskInput {
  /// SAS URI of Azure Storage Account Container to be used for storing backup files.
  final pulumi.Input<BlobShare> backupBlobShare;
  /// Backup file share information for all selected databases.
  final pulumi.Input<FileShare?>? backupFileShare;
  /// Backup Mode to specify whether to use existing backup or create new backup.
  final pulumi.Input<dynamic>? backupMode;
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlMIDatabaseInput>> selectedDatabases;
  /// Logins to migrate
  final pulumi.Input<List<String>?>? selectedLogins;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMITaskInput].
  /// [backupBlobShare] SAS URI of Azure Storage Account Container to be used for storing backup files.
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [backupMode] Backup Mode to specify whether to use existing backup or create new backup.
  /// [selectedDatabases] Databases to migrate
  /// [selectedLogins] Logins to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [targetConnectionInfo] Information for connecting to target
  const ValidateMigrationInputSqlServerSqlMITaskInput({
    required this.backupBlobShare,
    this.backupFileShare,
    this.backupMode,
    required this.selectedDatabases,
    this.selectedLogins,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupBlobShare': pulumi.Input.mapInputValue<BlobShare, Map<String, dynamic>>(backupBlobShare, (value) => value.toMap()),
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShare, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'backupMode': ?backupMode,
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlMIDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectedLogins': ?selectedLogins,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMITaskInput.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskInput(
      backupBlobShare: pulumi.Input.fromValue(BlobShare.fromMap((map['backupBlobShare']! as Map).cast<String, dynamic>())),
      backupFileShare: (() { final guardedValue = map['backupFileShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileShare.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupMode: (() { final guardedValue = map['backupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInput>(map['selectedDatabases']!, (value) => MigrateSqlServerSqlMIDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))),
      selectedLogins: (() { final guardedValue = map['selectedLogins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
