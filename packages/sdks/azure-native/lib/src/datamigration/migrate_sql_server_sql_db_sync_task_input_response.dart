// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input_response.dart';
import 'migration_validation_options_response.dart';
import 'sql_connection_info_response.dart';

/// Input for the task that migrates on-prem SQL Server databases to Azure SQL Database for online migrations
class MigrateSqlServerSqlDbSyncTaskInputResponse {
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlDbSyncDatabaseInputResponse>> selectedDatabases;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;
  /// Validation options
  final pulumi.Input<MigrationValidationOptionsResponse?>? validationOptions;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskInputResponse].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [targetConnectionInfo] Information for connecting to target
  /// [validationOptions] Validation options
  const MigrateSqlServerSqlDbSyncTaskInputResponse({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlDbSyncDatabaseInputResponse>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
      'validationOptions': ?pulumi.Input.mapOptionalInputValue<MigrationValidationOptionsResponse, Map<String, dynamic>>(validationOptions, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskInputResponse(
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInputResponse>(map['selectedDatabases']!, (value) => MigrateSqlServerSqlDbSyncDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
      validationOptions: (() { final guardedValue = map['validationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationValidationOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
