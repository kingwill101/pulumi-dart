// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input_response.dart';
import 'migration_validation_options_response.dart';
import 'sql_connection_info_response.dart';

/// Input for the task that migrates on-prem SQL Server databases to Azure SQL Database for online migrations
class MigrateSqlServerSqlDbSyncTaskInputResponse {
  /// Databases to migrate
  final List<MigrateSqlServerSqlDbSyncDatabaseInputResponse> selectedDatabases;
  /// Information for connecting to source
  final SqlConnectionInfoResponse sourceConnectionInfo;
  /// Information for connecting to target
  final SqlConnectionInfoResponse targetConnectionInfo;
  /// Validation options
  final MigrationValidationOptionsResponse? validationOptions;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskInputResponse].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [targetConnectionInfo] Information for connecting to target
  /// [validationOptions] Validation options
  MigrateSqlServerSqlDbSyncTaskInputResponse({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInputResponse, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
      'validationOptions': ?validationOptions == null ? null : validationOptions!.toMap(),
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskInputResponse(
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInputResponse>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbSyncDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
      validationOptions: map['validationOptions'] == null ? null : MigrationValidationOptionsResponse.fromMap((map['validationOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

