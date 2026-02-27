// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'execution_call_log_level2.dart';

/// The set of arguments for Execution.
class ExecutionArgs6 {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final Input<String>? argument;

  /// The call logging level associated to this execution.
  final Input<ExecutionCallLogLevel2>? callLogLevel;
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> workflowId;

  ExecutionArgs6({
    this.argument,
    this.callLogLevel,
    this.location,
    this.project,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentValue = argument;
    if (argumentValue != null) {
      map['argument'] = argumentValue;
    }
    final callLogLevelValue = callLogLevel;
    if (callLogLevelValue != null) {
      map['callLogLevel'] =
          Input.mapOptionalInputValue<ExecutionCallLogLevel2, String>(
              callLogLevelValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workflowId'] = workflowId;
    return map;
  }

  factory ExecutionArgs6.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs6(
      argument: Input.asOptionalInput<String>(map['argument']),
      callLogLevel:
          Input.asOptionalInput<ExecutionCallLogLevel2>(map['callLogLevel']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workflowId: Input.asInput<String>(map['workflowId']),
    );
  }
}
