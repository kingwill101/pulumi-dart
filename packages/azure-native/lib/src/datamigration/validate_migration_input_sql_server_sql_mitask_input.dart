// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_share.dart';
import 'file_share.dart';
import 'migrate_sql_server_sql_midatabase_input.dart';
import 'sql_connection_info.dart';

/// Input for task that validates migration input for SQL to Azure SQL Managed Instance
class ValidateMigrationInputSqlServerSqlMITaskInput {
  /// SAS URI of Azure Storage Account Container to be used for storing backup files.
  final BlobShare backupBlobShare;
  /// Backup file share information for all selected databases.
  final FileShare? backupFileShare;
  /// Backup Mode to specify whether to use existing backup or create new backup.
  final String? backupMode;
  /// Databases to migrate
  final List<MigrateSqlServerSqlMIDatabaseInput> selectedDatabases;
  /// Logins to migrate
  final List<String>? selectedLogins;
  /// Information for connecting to source
  final SqlConnectionInfo sourceConnectionInfo;
  /// Information for connecting to target
  final SqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMITaskInput].
  /// [backupBlobShare] SAS URI of Azure Storage Account Container to be used for storing backup files.
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [backupMode] Backup Mode to specify whether to use existing backup or create new backup.
  /// [selectedDatabases] Databases to migrate
  /// [selectedLogins] Logins to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [targetConnectionInfo] Information for connecting to target
  ValidateMigrationInputSqlServerSqlMITaskInput({
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
      'backupBlobShare': backupBlobShare.toMap(),
      'backupFileShare': ?backupFileShare == null ? null : backupFileShare!.toMap(),
      'backupMode': ?backupMode,
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'selectedLogins': ?selectedLogins,
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMITaskInput.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskInput(
      backupBlobShare: BlobShare.fromMap((map['backupBlobShare'] as Map).cast<String, dynamic>()),
      backupFileShare: map['backupFileShare'] == null ? null : FileShare.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>()),
      backupMode: map['backupMode'] == null ? null : map['backupMode'] as String,
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlMIDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      selectedLogins: map['selectedLogins'] == null ? null : (map['selectedLogins'] as List).cast<String>(),
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

