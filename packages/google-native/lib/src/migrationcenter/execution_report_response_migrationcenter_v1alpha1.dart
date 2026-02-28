// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response_migrationcenter_v1alpha1.dart';
import 'validation_report_response_migrationcenter_v1alpha1.dart';

/// A resource that reports result of the import job execution.
class ExecutionReportResponseMigrationcenterV1alpha1 {
  /// Validation errors encountered during the execution of the import job.
  final ValidationReportResponseMigrationcenterV1alpha1 executionErrors;

  /// Total number of asset frames reported for the import job.
  final int framesReported;

  /// List of job-level errors. Deprecated, use the job errors under execution_errors instead.
  final List<ImportErrorResponseMigrationcenterV1alpha1> jobErrors;

  /// Total number of rows in the import job.
  final int totalRowsCount;

  /// Creates a new [ExecutionReportResponseMigrationcenterV1alpha1].
  /// [executionErrors] Validation errors encountered during the execution of the import job.
  /// [framesReported] Total number of asset frames reported for the import job.
  /// [jobErrors] List of job-level errors. Deprecated, use the job errors under execution_errors instead.
  /// [totalRowsCount] Total number of rows in the import job.
  ExecutionReportResponseMigrationcenterV1alpha1({
    required this.executionErrors,
    required this.framesReported,
    required this.jobErrors,
    required this.totalRowsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionErrors'] = executionErrors.toMap();
    map['framesReported'] = framesReported;
    map['jobErrors'] = pulumi.Input.encodeList<
        ImportErrorResponseMigrationcenterV1alpha1,
        Map<String, dynamic>>(jobErrors, (value) => value.toMap());
    map['totalRowsCount'] = totalRowsCount;
    return map;
  }

  factory ExecutionReportResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ExecutionReportResponseMigrationcenterV1alpha1(
      executionErrors: ValidationReportResponseMigrationcenterV1alpha1.fromMap(
          (map['executionErrors'] as Map).cast<String, dynamic>()),
      framesReported: map['framesReported'] as int,
      jobErrors:
          pulumi.Input.decodeList<ImportErrorResponseMigrationcenterV1alpha1>(
              map['jobErrors'],
              (value) => ImportErrorResponseMigrationcenterV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      totalRowsCount: map['totalRowsCount'] as int,
    );
  }
}
