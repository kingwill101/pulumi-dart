// ignore_for_file: unused_element, unnecessary_cast

import 'data_integrity_validation_result_response.dart';
import 'query_analysis_validation_result_response.dart';
import 'schema_comparison_validation_result_response.dart';

class MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse {
  /// Provides data integrity validation result between the source and target tables that are migrated.
  final DataIntegrityValidationResultResponse dataIntegrityValidationResult;
  /// Validation end time
  final String endedOn;
  /// Result identifier
  final String id;
  /// Migration Identifier
  final String migrationId;
  /// Results of some of the query execution result between source and target database
  final QueryAnalysisValidationResultResponse queryAnalysisValidationResult;
  /// Result type
  /// Expected value is 'MigrationDatabaseLevelValidationOutput'.
  final String resultType;
  /// Provides schema comparison result between source and target database
  final SchemaComparisonValidationResultResponse schemaValidationResult;
  /// Name of the source database
  final String sourceDatabaseName;
  /// Validation start time
  final String startedOn;
  /// Current status of validation at the database level
  final String status;
  /// Name of the target database
  final String targetDatabaseName;

  /// Creates a new [MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse].
  /// [dataIntegrityValidationResult] Provides data integrity validation result between the source and target tables that are migrated.
  /// [endedOn] Validation end time
  /// [id] Result identifier
  /// [migrationId] Migration Identifier
  /// [queryAnalysisValidationResult] Results of some of the query execution result between source and target database
  /// [resultType] Result type
  /// [schemaValidationResult] Provides schema comparison result between source and target database
  /// [sourceDatabaseName] Name of the source database
  /// [startedOn] Validation start time
  /// [status] Current status of validation at the database level
  /// [targetDatabaseName] Name of the target database
  MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse({
    required this.dataIntegrityValidationResult,
    required this.endedOn,
    required this.id,
    required this.migrationId,
    required this.queryAnalysisValidationResult,
    required this.resultType,
    required this.schemaValidationResult,
    required this.sourceDatabaseName,
    required this.startedOn,
    required this.status,
    required this.targetDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIntegrityValidationResult': dataIntegrityValidationResult.toMap(),
      'endedOn': endedOn,
      'id': id,
      'migrationId': migrationId,
      'queryAnalysisValidationResult': queryAnalysisValidationResult.toMap(),
      'resultType': resultType,
      'schemaValidationResult': schemaValidationResult.toMap(),
      'sourceDatabaseName': sourceDatabaseName,
      'startedOn': startedOn,
      'status': status,
      'targetDatabaseName': targetDatabaseName,
    };
  }

  factory MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse(
      dataIntegrityValidationResult: DataIntegrityValidationResultResponse.fromMap((map['dataIntegrityValidationResult'] as Map).cast<String, dynamic>()),
      endedOn: map['endedOn'] as String,
      id: map['id'] as String,
      migrationId: map['migrationId'] as String,
      queryAnalysisValidationResult: QueryAnalysisValidationResultResponse.fromMap((map['queryAnalysisValidationResult'] as Map).cast<String, dynamic>()),
      resultType: map['resultType'] as String,
      schemaValidationResult: SchemaComparisonValidationResultResponse.fromMap((map['schemaValidationResult'] as Map).cast<String, dynamic>()),
      sourceDatabaseName: map['sourceDatabaseName'] as String,
      startedOn: map['startedOn'] as String,
      status: map['status'] as String,
      targetDatabaseName: map['targetDatabaseName'] as String,
    );
  }
}

