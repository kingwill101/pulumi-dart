// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_validation_database_summary_result_response.dart';

/// Migration Validation Result
class MigrationValidationResultResponse {
  /// Migration validation result identifier
  final pulumi.Input<String> id;
  /// Migration Identifier
  final pulumi.Input<String> migrationId;
  /// Current status of validation at the migration level. Status from the database validation result status will be aggregated here.
  final pulumi.Input<String> status;
  /// Validation summary results for each database
  final pulumi.Input<Map<String, MigrationValidationDatabaseSummaryResultResponse>>? summaryResults;

  /// Creates a new [MigrationValidationResultResponse].
  /// [id] Migration validation result identifier
  /// [migrationId] Migration Identifier
  /// [status] Current status of validation at the migration level. Status from the database validation result status will be aggregated here.
  /// [summaryResults] Validation summary results for each database
  MigrationValidationResultResponse({
    required this.id,
    required this.migrationId,
    required this.status,
    this.summaryResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'migrationId': migrationId,
      'status': status,
      'summaryResults': ?pulumi.Input.mapOptionalInputValue<Map<String, MigrationValidationDatabaseSummaryResultResponse>, Map<String, Map<String, dynamic>>>(summaryResults, (value) => pulumi.Input.encodeMapValues<MigrationValidationDatabaseSummaryResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MigrationValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return MigrationValidationResultResponse(
      id: (map['id'] as String).input(),
      migrationId: (map['migrationId'] as String).input(),
      status: (map['status'] as String).input(),
      summaryResults: map['summaryResults'] == null ? null : (pulumi.Input.decodeMapValues<MigrationValidationDatabaseSummaryResultResponse>(map['summaryResults']!, (value) => MigrationValidationDatabaseSummaryResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

