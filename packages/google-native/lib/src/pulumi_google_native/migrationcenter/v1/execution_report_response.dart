// ignore_for_file: unused_element, unnecessary_cast

import 'validation_report_response.dart';

/// A resource that reports result of the import job execution.
class ExecutionReportResponse {
  /// Validation errors encountered during the execution of the import job.
  final ValidationReportResponse executionErrors;

  /// Total number of asset frames reported for the import job.
  final int framesReported;

  /// Total number of rows in the import job.
  final int totalRowsCount;

  ExecutionReportResponse({
    required this.executionErrors,
    required this.framesReported,
    required this.totalRowsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionErrors'] = executionErrors.toMap();
    map['framesReported'] = framesReported;
    map['totalRowsCount'] = totalRowsCount;
    return map;
  }

  factory ExecutionReportResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionReportResponse(
      executionErrors: ValidationReportResponse.fromMap(
          (map['executionErrors'] as Map).cast<String, dynamic>()),
      framesReported: map['framesReported'] as int,
      totalRowsCount: map['totalRowsCount'] as int,
    );
  }
}
