// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_workflowexecutions_v1.dart';
import 'state_error_response.dart';
import 'status_response_workflowexecutions_v1.dart';

/// Result data returned by getExecution.
class GetExecutionWorkflowexecutionsV1Result {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final String argument;

  /// The call logging level associated to this execution.
  final String callLogLevel;

  /// Measures the duration of the execution.
  final String duration;

  /// Marks the end of execution, successful or not.
  final String endTime;

  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  final ErrorResponseWorkflowexecutionsV1 error;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  final Map<String, String> labels;

  /// The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  final String name;

  /// Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  final String result;

  /// Marks the beginning of execution.
  final String startTime;

  /// Current state of the execution.
  final String state;

  /// Error regarding the state of the Execution resource. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  final StateErrorResponse stateError;

  /// Status tracks the current steps and progress data of this execution.
  final StatusResponseWorkflowexecutionsV1 status;

  /// Revision of the workflow this execution is using.
  final String workflowRevisionId;

  GetExecutionWorkflowexecutionsV1Result({
    required this.argument,
    required this.callLogLevel,
    required this.duration,
    required this.endTime,
    required this.error,
    required this.labels,
    required this.name,
    required this.result,
    required this.startTime,
    required this.state,
    required this.stateError,
    required this.status,
    required this.workflowRevisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['argument'] = argument;
    map['callLogLevel'] = callLogLevel;
    map['duration'] = duration;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['result'] = result;
    map['startTime'] = startTime;
    map['state'] = state;
    map['stateError'] = stateError.toMap();
    map['status'] = status.toMap();
    map['workflowRevisionId'] = workflowRevisionId;
    return map;
  }

  factory GetExecutionWorkflowexecutionsV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetExecutionWorkflowexecutionsV1Result(
      argument: map['argument'] as String,
      callLogLevel: map['callLogLevel'] as String,
      duration: map['duration'] as String,
      endTime: map['endTime'] as String,
      error: ErrorResponseWorkflowexecutionsV1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      result: map['result'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      stateError: StateErrorResponse.fromMap(
          (map['stateError'] as Map).cast<String, dynamic>()),
      status: StatusResponseWorkflowexecutionsV1.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      workflowRevisionId: map['workflowRevisionId'] as String,
    );
  }
}
