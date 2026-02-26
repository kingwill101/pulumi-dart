// ignore_for_file: unused_element, unnecessary_cast

import 'status_response14.dart';

/// A record of an attempt to create a workflow invocation for this workflow config.
class ScheduledExecutionRecordResponse {
  /// The error status encountered upon this attempt to create the workflow invocation, if the attempt was unsuccessful.
  final StatusResponse14 errorStatus;

  /// The timestamp of this execution attempt.
  final String executionTime;

  /// The name of the created workflow invocation, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/workflowInvocations/*`.
  final String workflowInvocation;

  ScheduledExecutionRecordResponse({
    required this.errorStatus,
    required this.executionTime,
    required this.workflowInvocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorStatus'] = errorStatus.toMap();
    map['executionTime'] = executionTime;
    map['workflowInvocation'] = workflowInvocation;
    return map;
  }

  factory ScheduledExecutionRecordResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledExecutionRecordResponse(
      errorStatus: StatusResponse14.fromMap(
          (map['errorStatus'] as Map).cast<String, dynamic>()),
      executionTime: map['executionTime'] as String,
      workflowInvocation: map['workflowInvocation'] as String,
    );
  }
}
