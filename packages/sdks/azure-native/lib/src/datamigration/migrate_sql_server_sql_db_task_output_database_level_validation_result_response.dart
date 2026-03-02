// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_integrity_validation_result_response.dart';
import 'query_analysis_validation_result_response.dart';
import 'schema_comparison_validation_result_response.dart';

class MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse {
  /// Provides data integrity validation result between the source and target tables that are migrated.
  final pulumi.Input<DataIntegrityValidationResultResponse> dataIntegrityValidationResult;
  /// Validation end time
  final pulumi.Input<String> endedOn;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Migration Identifier
  final pulumi.Input<String> migrationId;
  /// Results of some of the query execution result between source and target database
  final pulumi.Input<QueryAnalysisValidationResultResponse> queryAnalysisValidationResult;
  /// Result type
  /// Expected value is 'MigrationDatabaseLevelValidationOutput'.
  final pulumi.Input<String> resultType;
  /// Provides schema comparison result between source and target database
  final pulumi.Input<SchemaComparisonValidationResultResponse> schemaValidationResult;
  /// Name of the source database
  final pulumi.Input<String> sourceDatabaseName;
  /// Validation start time
  final pulumi.Input<String> startedOn;
  /// Current status of validation at the database level
  final pulumi.Input<String> status;
  /// Name of the target database
  final pulumi.Input<String> targetDatabaseName;

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
      'dataIntegrityValidationResult': pulumi.Input.mapInputValue<DataIntegrityValidationResultResponse, Map<String, dynamic>>(dataIntegrityValidationResult, (value) => value.toMap()),
      'endedOn': endedOn,
      'id': id,
      'migrationId': migrationId,
      'queryAnalysisValidationResult': pulumi.Input.mapInputValue<QueryAnalysisValidationResultResponse, Map<String, dynamic>>(queryAnalysisValidationResult, (value) => value.toMap()),
      'resultType': resultType,
      'schemaValidationResult': pulumi.Input.mapInputValue<SchemaComparisonValidationResultResponse, Map<String, dynamic>>(schemaValidationResult, (value) => value.toMap()),
      'sourceDatabaseName': sourceDatabaseName,
      'startedOn': startedOn,
      'status': status,
      'targetDatabaseName': targetDatabaseName,
    };
  }

  factory MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResultResponse(
      dataIntegrityValidationResult: (DataIntegrityValidationResultResponse.fromMap((map['dataIntegrityValidationResult'] as Map).cast<String, dynamic>())).input(),
      endedOn: (map['endedOn'] as String).input(),
      id: (map['id'] as String).input(),
      migrationId: (map['migrationId'] as String).input(),
      queryAnalysisValidationResult: (QueryAnalysisValidationResultResponse.fromMap((map['queryAnalysisValidationResult'] as Map).cast<String, dynamic>())).input(),
      resultType: (map['resultType'] as String).input(),
      schemaValidationResult: (SchemaComparisonValidationResultResponse.fromMap((map['schemaValidationResult'] as Map).cast<String, dynamic>())).input(),
      sourceDatabaseName: (map['sourceDatabaseName'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
      status: (map['status'] as String).input(),
      targetDatabaseName: (map['targetDatabaseName'] as String).input(),
    );
  }
}

