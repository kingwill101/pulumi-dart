// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_output_response_database_schema_map.dart';
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure Database for PostgreSQL and target server requirements for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse {
  /// Mapping of schemas per database
  final pulumi.Input<List<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap>>? databaseSchemaMap;
  /// List of databases on target server
  final pulumi.Input<List<String>> databases;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Version of the target server
  final pulumi.Input<String> targetServerVersion;
  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse].
  /// [databaseSchemaMap] Mapping of schemas per database
  /// [databases] List of databases on target server
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Version of the target server
  /// [validationErrors] Validation errors associated with the task
  ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse({
    this.databaseSchemaMap,
    required this.databases,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseSchemaMap': ?pulumi.Input.mapOptionalInputValue<List<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap>, List<Map<String, dynamic>>>(databaseSchemaMap, (value) => pulumi.Input.encodeList<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databases': databases,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse(
      databaseSchemaMap: map['databaseSchemaMap'] == null ? null : (pulumi.Input.decodeList<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap>(map['databaseSchemaMap']!, (value) => ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databases: ((map['databases'] as List).cast<String>()).input(),
      targetServerBrandVersion: (map['targetServerBrandVersion'] as String).input(),
      targetServerVersion: (map['targetServerVersion'] as String).input(),
      validationErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

