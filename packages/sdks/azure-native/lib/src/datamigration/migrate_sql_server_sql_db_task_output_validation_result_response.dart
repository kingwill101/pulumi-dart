// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_validation_database_summary_result_response.dart';

class MigrateSqlServerSqlDbTaskOutputValidationResultResponse {
  /// Migration validation result identifier
  final String id;
  /// Migration Identifier
  final String migrationId;
  /// Result type
  /// Expected value is 'MigrationValidationOutput'.
  final String resultType;
  /// Current status of validation at the migration level. Status from the database validation result status will be aggregated here.
  final String status;
  /// Validation summary results for each database
  final Map<String, MigrationValidationDatabaseSummaryResultResponse>? summaryResults;

  /// Creates a new [MigrateSqlServerSqlDbTaskOutputValidationResultResponse].
  /// [id] Migration validation result identifier
  /// [migrationId] Migration Identifier
  /// [resultType] Result type
  /// [status] Current status of validation at the migration level. Status from the database validation result status will be aggregated here.
  /// [summaryResults] Validation summary results for each database
  MigrateSqlServerSqlDbTaskOutputValidationResultResponse({
    required this.id,
    required this.migrationId,
    required this.resultType,
    required this.status,
    this.summaryResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'migrationId': migrationId,
      'resultType': resultType,
      'status': status,
      'summaryResults': ?summaryResults == null ? null : pulumi.Input.encodeMapValues<MigrationValidationDatabaseSummaryResultResponse, Map<String, dynamic>>(summaryResults!, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlDbTaskOutputValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskOutputValidationResultResponse(
      id: map['id'] as String,
      migrationId: map['migrationId'] as String,
      resultType: map['resultType'] as String,
      status: map['status'] as String,
      summaryResults: map['summaryResults'] == null ? null : pulumi.Input.decodeMapValues<MigrationValidationDatabaseSummaryResultResponse>(map['summaryResults'], (value) => MigrationValidationDatabaseSummaryResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

