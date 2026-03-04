// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app_response.dart';
import 'file_share_response.dart';
import 'mi_sql_connection_info_response.dart';
import 'migrate_sql_server_sql_midatabase_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance online scenario.
class MigrateSqlServerSqlMISyncTaskInputResponse {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final pulumi.Input<AzureActiveDirectoryAppResponse> azureApp;

  /// Backup file share information for all selected databases.
  final pulumi.Input<FileShareResponse>? backupFileShare;

  /// Number of database migrations to start in parallel
  final pulumi.Input<double>? numberOfParallelDatabaseMigrations;

  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlMIDatabaseInputResponse>>
  selectedDatabases;

  /// Connection information for source SQL Server
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;

  /// Fully qualified resourceId of storage
  final pulumi.Input<String> storageResourceId;

  /// Connection information for Azure SQL Database Managed Instance
  final pulumi.Input<MiSqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [MigrateSqlServerSqlMISyncTaskInputResponse].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [numberOfParallelDatabaseMigrations] Number of database migrations to start in parallel
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [storageResourceId] Fully qualified resourceId of storage
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  MigrateSqlServerSqlMISyncTaskInputResponse({
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
      'azureApp':
          pulumi.Input.mapInputValue<
            AzureActiveDirectoryAppResponse,
            Map<String, dynamic>
          >(azureApp, (value) => value.toMap()),
      'backupFileShare':
          ?pulumi.Input.mapOptionalInputValue<
            FileShareResponse,
            Map<String, dynamic>
          >(backupFileShare, (value) => value.toMap()),
      'numberOfParallelDatabaseMigrations': ?numberOfParallelDatabaseMigrations,
      'selectedDatabases':
          pulumi.Input.mapInputValue<
            List<MigrateSqlServerSqlMIDatabaseInputResponse>,
            List<Map<String, dynamic>>
          >(
            selectedDatabases,
            (value) =>
                pulumi.Input.encodeList<
                  MigrateSqlServerSqlMIDatabaseInputResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<
            SqlConnectionInfoResponse,
            Map<String, dynamic>
          >(sourceConnectionInfo, (value) => value.toMap()),
      'storageResourceId': storageResourceId,
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<
            MiSqlConnectionInfoResponse,
            Map<String, dynamic>
          >(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlMISyncTaskInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateSqlServerSqlMISyncTaskInputResponse(
      azureApp: pulumi.Input.fromValue(
        AzureActiveDirectoryAppResponse.fromMap(
          (map['azureApp']! as Map).cast<String, dynamic>(),
        ),
      ),
      backupFileShare: (() {
        final guardedValue = map['backupFileShare'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileShareResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      numberOfParallelDatabaseMigrations: (() {
        final guardedValue = map['numberOfParallelDatabaseMigrations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      selectedDatabases: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInputResponse>(
          map['selectedDatabases']!,
          (value) => MigrateSqlServerSqlMIDatabaseInputResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sourceConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfoResponse.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageResourceId: pulumi.Input.fromValue(
        map['storageResourceId'] as String,
      ),
      targetConnectionInfo: pulumi.Input.fromValue(
        MiSqlConnectionInfoResponse.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
