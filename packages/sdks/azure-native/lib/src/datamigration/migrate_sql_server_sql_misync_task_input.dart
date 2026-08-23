// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app.dart';
import 'file_share.dart';
import 'mi_sql_connection_info.dart';
import 'migrate_sql_server_sql_midatabase_input.dart';
import 'sql_connection_info.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance online scenario.
class MigrateSqlServerSqlMISyncTaskInput {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final pulumi.Input<AzureActiveDirectoryApp> azureApp;
  /// Backup file share information for all selected databases.
  final pulumi.Input<FileShare>? backupFileShare;
  /// Number of database migrations to start in parallel
  final pulumi.Input<double>? numberOfParallelDatabaseMigrations;
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlMIDatabaseInput>> selectedDatabases;
  /// Connection information for source SQL Server
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Fully qualified resourceId of storage
  final pulumi.Input<String> storageResourceId;
  /// Connection information for Azure SQL Database Managed Instance
  final pulumi.Input<MiSqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [MigrateSqlServerSqlMISyncTaskInput].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [numberOfParallelDatabaseMigrations] Number of database migrations to start in parallel
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [storageResourceId] Fully qualified resourceId of storage
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  const MigrateSqlServerSqlMISyncTaskInput({
    required this.azureApp,
    this.backupFileShare,
    this.numberOfParallelDatabaseMigrations,
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.storageResourceId,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApp': pulumi.Input.mapInputValue<AzureActiveDirectoryApp, Map<String, dynamic>>(azureApp, (value) => value.toMap()),
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShare, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'numberOfParallelDatabaseMigrations': ?numberOfParallelDatabaseMigrations,
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlMIDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'storageResourceId': storageResourceId,
      'targetConnectionInfo': pulumi.Input.mapInputValue<MiSqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlMISyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMISyncTaskInput(
      azureApp: pulumi.Input.fromValue(AzureActiveDirectoryApp.fromMap((map['azureApp']! as Map).cast<String, dynamic>())),
      backupFileShare: (() { final guardedValue = map['backupFileShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileShare.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberOfParallelDatabaseMigrations: (() { final guardedValue = map['numberOfParallelDatabaseMigrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInput>(map['selectedDatabases']!, (value) => MigrateSqlServerSqlMIDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      storageResourceId: pulumi.Input.fromValue(map['storageResourceId'] as String),
      targetConnectionInfo: pulumi.Input.fromValue(MiSqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
