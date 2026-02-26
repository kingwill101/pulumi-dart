// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_workflow_config_recent_scheduled_execution_record_error_status/repository_workflow_config_recent_scheduled_execution_record_error_status.dart';

class RepositoryWorkflowConfigRecentScheduledExecutionRecord {
  /// (Output)
  /// The error status encountered upon this attempt to create the workflow invocation, if the attempt was unsuccessful.
  /// Structure is documented below.
  final List<RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus>?
      errorStatuses;

  /// (Output)
  /// The timestamp of this workflow attempt.
  final String? executionTime;

  /// (Output)
  /// The name of the created workflow invocation, if one was successfully created. In the format projects/*/locations/*/repositories/*/workflowInvocations/*.
  final String? workflowInvocation;

  RepositoryWorkflowConfigRecentScheduledExecutionRecord({
    this.errorStatuses,
    this.executionTime,
    this.workflowInvocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorStatusesValue = errorStatuses;
    if (errorStatusesValue != null) {
      map['errorStatuses'] = Input.encodeList<
          RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus,
          Map<String, dynamic>>(errorStatusesValue, (value) => value.toMap());
    }
    final executionTimeValue = executionTime;
    if (executionTimeValue != null) {
      map['executionTime'] = executionTimeValue;
    }
    final workflowInvocationValue = workflowInvocation;
    if (workflowInvocationValue != null) {
      map['workflowInvocation'] = workflowInvocationValue;
    }
    return map;
  }

  factory RepositoryWorkflowConfigRecentScheduledExecutionRecord.fromMap(
      Map<String, dynamic> map) {
    return RepositoryWorkflowConfigRecentScheduledExecutionRecord(
      errorStatuses: map['errorStatuses'] == null
          ? null
          : Input.decodeList<
                  RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus>(
              map['errorStatuses'],
              (value) =>
                  RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus
                      .fromMap((value as Map).cast<String, dynamic>())),
      executionTime:
          map['executionTime'] == null ? null : map['executionTime'] as String,
      workflowInvocation: map['workflowInvocation'] == null
          ? null
          : map['workflowInvocation'] as String,
    );
  }
}
