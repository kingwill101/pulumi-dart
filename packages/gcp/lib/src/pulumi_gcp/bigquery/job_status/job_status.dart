// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_status_error/job_status_error.dart';
import '../job_status_error_result/job_status_error_result.dart';

class JobStatus {
  /// (Output)
  /// Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
  /// Structure is documented below.
  final List<JobStatusErrorResult>? errorResults;

  /// (Output)
  /// The first errors encountered during the running of the job. The final message
  /// includes the number of errors that caused the process to stop. Errors here do
  /// not necessarily mean that the job has not completed or was unsuccessful.
  /// Structure is documented below.
  final List<JobStatusError>? errors;

  /// (Output)
  /// Running state of the job. Valid states include 'PENDING', 'RUNNING', and 'DONE'.
  final String? state;

  JobStatus({
    this.errorResults,
    this.errors,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorResultsValue = errorResults;
    if (errorResultsValue != null) {
      map['errorResults'] =
          Input.encodeList<JobStatusErrorResult, Map<String, dynamic>>(
              errorResultsValue, (value) => value.toMap());
    }
    final errorsValue = errors;
    if (errorsValue != null) {
      map['errors'] = Input.encodeList<JobStatusError, Map<String, dynamic>>(
          errorsValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory JobStatus.fromMap(Map<String, dynamic> map) {
    return JobStatus(
      errorResults: map['errorResults'] == null
          ? null
          : Input.decodeList<JobStatusErrorResult>(
              map['errorResults'],
              (value) => JobStatusErrorResult.fromMap(
                  (value as Map).cast<String, dynamic>())),
      errors: map['errors'] == null
          ? null
          : Input.decodeList<JobStatusError>(
              map['errors'],
              (value) => JobStatusError.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
