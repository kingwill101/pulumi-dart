// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app.dart';
import 'file_share.dart';
import 'mi_sql_connection_info.dart';
import 'migrate_sql_server_sql_midatabase_input.dart';
import 'sql_connection_info.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance online scenario.
class ValidateMigrationInputSqlServerSqlMISyncTaskInput {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final AzureActiveDirectoryApp azureApp;
  /// Backup file share information for all selected databases.
  final FileShare? backupFileShare;
  /// Databases to migrate
  final List<MigrateSqlServerSqlMIDatabaseInput> selectedDatabases;
  /// Connection information for source SQL Server
  final SqlConnectionInfo sourceConnectionInfo;
  /// Fully qualified resourceId of storage
  final String storageResourceId;
  /// Connection information for Azure SQL Database Managed Instance
  final MiSqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMISyncTaskInput].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [storageResourceId] Fully qualified resourceId of storage
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  ValidateMigrationInputSqlServerSqlMISyncTaskInput({
    required this.azureApp,
    this.backupFileShare,
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.storageResourceId,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApp': azureApp.toMap(),
      'backupFileShare': ?backupFileShare == null ? null : backupFileShare!.toMap(),
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'storageResourceId': storageResourceId,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMISyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMISyncTaskInput(
      azureApp: AzureActiveDirectoryApp.fromMap((map['azureApp'] as Map).cast<String, dynamic>()),
      backupFileShare: map['backupFileShare'] == null ? null : FileShare.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>()),
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlMIDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      storageResourceId: map['storageResourceId'] as String,
      targetConnectionInfo: MiSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

