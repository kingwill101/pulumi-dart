// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_output_response_database_schema_map.dart';
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure Database for PostgreSQL and target server requirements for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse {
  /// Mapping of schemas per database
  final List<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap>? databaseSchemaMap;
  /// List of databases on target server
  final List<String> databases;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Version of the target server
  final String targetServerVersion;
  /// Validation errors associated with the task
  final List<ReportableExceptionResponse> validationErrors;

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
      'databaseSchemaMap': ?databaseSchemaMap == null ? null : pulumi.Input.encodeList<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap, Map<String, dynamic>>(databaseSchemaMap!, (value) => value.toMap()),
      'databases': databases,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponse(
      databaseSchemaMap: map['databaseSchemaMap'] == null ? null : pulumi.Input.decodeList<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap>(map['databaseSchemaMap'], (value) => ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap.fromMap((value as Map).cast<String, dynamic>())),
      databases: (map['databases'] as List).cast<String>(),
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

