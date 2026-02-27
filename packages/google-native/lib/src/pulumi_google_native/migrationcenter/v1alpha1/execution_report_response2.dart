// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'import_error_response2.dart';
import 'validation_report_response2.dart';

/// A resource that reports result of the import job execution.
class ExecutionReportResponse2 {
  /// Validation errors encountered during the execution of the import job.
  final ValidationReportResponse2 executionErrors;

  /// Total number of asset frames reported for the import job.
  final int framesReported;

  /// List of job-level errors. Deprecated, use the job errors under execution_errors instead.
  final List<ImportErrorResponse2> jobErrors;

  /// Total number of rows in the import job.
  final int totalRowsCount;

  ExecutionReportResponse2({
    required this.executionErrors,
    required this.framesReported,
    required this.jobErrors,
    required this.totalRowsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionErrors'] = executionErrors.toMap();
    map['framesReported'] = framesReported;
    map['jobErrors'] =
        Input.encodeList<ImportErrorResponse2, Map<String, dynamic>>(
            jobErrors, (value) => value.toMap());
    map['totalRowsCount'] = totalRowsCount;
    return map;
  }

  factory ExecutionReportResponse2.fromMap(Map<String, dynamic> map) {
    return ExecutionReportResponse2(
      executionErrors: ValidationReportResponse2.fromMap(
          (map['executionErrors'] as Map).cast<String, dynamic>()),
      framesReported: map['framesReported'] as int,
      jobErrors: Input.decodeList<ImportErrorResponse2>(
          map['jobErrors'],
          (value) => ImportErrorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      totalRowsCount: map['totalRowsCount'] as int,
    );
  }
}
