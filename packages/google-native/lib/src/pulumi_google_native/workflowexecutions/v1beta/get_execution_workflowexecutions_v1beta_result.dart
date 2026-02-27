// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_workflowexecutions_v1beta.dart';
import 'status_response_workflowexecutions_v1beta.dart';

/// Result data returned by getExecution.
class GetExecutionWorkflowexecutionsV1betaResult {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final String argument;

  /// The call logging level associated to this execution.
  final String callLogLevel;

  /// Marks the end of execution, successful or not.
  final String endTime;

  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  final ErrorResponseWorkflowexecutionsV1beta error;

  /// The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  final String name;

  /// Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  final String result;

  /// Marks the beginning of execution.
  final String startTime;

  /// Current state of the execution.
  final String state;

  /// Status tracks the current steps and progress data of this execution.
  final StatusResponseWorkflowexecutionsV1beta status;

  /// Revision of the workflow this execution is using.
  final String workflowRevisionId;

  GetExecutionWorkflowexecutionsV1betaResult({
    required this.argument,
    required this.callLogLevel,
    required this.endTime,
    required this.error,
    required this.name,
    required this.result,
    required this.startTime,
    required this.state,
    required this.status,
    required this.workflowRevisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['argument'] = argument;
    map['callLogLevel'] = callLogLevel;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['name'] = name;
    map['result'] = result;
    map['startTime'] = startTime;
    map['state'] = state;
    map['status'] = status.toMap();
    map['workflowRevisionId'] = workflowRevisionId;
    return map;
  }

  factory GetExecutionWorkflowexecutionsV1betaResult.fromMap(
      Map<String, dynamic> map) {
    return GetExecutionWorkflowexecutionsV1betaResult(
      argument: map['argument'] as String,
      callLogLevel: map['callLogLevel'] as String,
      endTime: map['endTime'] as String,
      error: ErrorResponseWorkflowexecutionsV1beta.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      result: map['result'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      status: StatusResponseWorkflowexecutionsV1beta.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      workflowRevisionId: map['workflowRevisionId'] as String,
    );
  }
}
