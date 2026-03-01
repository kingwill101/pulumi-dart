// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app_response.dart';
import 'file_share_response.dart';
import 'mi_sql_connection_info_response.dart';
import 'migrate_sql_server_sql_midatabase_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance online scenario.
class ValidateMigrationInputSqlServerSqlMISyncTaskInputResponse {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final AzureActiveDirectoryAppResponse azureApp;
  /// Backup file share information for all selected databases.
  final FileShareResponse? backupFileShare;
  /// Databases to migrate
  final List<MigrateSqlServerSqlMIDatabaseInputResponse> selectedDatabases;
  /// Connection information for source SQL Server
  final SqlConnectionInfoResponse sourceConnectionInfo;
  /// Fully qualified resourceId of storage
  final String storageResourceId;
  /// Connection information for Azure SQL Database Managed Instance
  final MiSqlConnectionInfoResponse targetConnectionInfo;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMISyncTaskInputResponse].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [storageResourceId] Fully qualified resourceId of storage
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  ValidateMigrationInputSqlServerSqlMISyncTaskInputResponse({
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
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInputResponse, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'storageResourceId': storageResourceId,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMISyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMISyncTaskInputResponse(
      azureApp: AzureActiveDirectoryAppResponse.fromMap((map['azureApp'] as Map).cast<String, dynamic>()),
      backupFileShare: map['backupFileShare'] == null ? null : FileShareResponse.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>()),
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInputResponse>(map['selectedDatabases'], (value) => MigrateSqlServerSqlMIDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      storageResourceId: map['storageResourceId'] as String,
      targetConnectionInfo: MiSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

