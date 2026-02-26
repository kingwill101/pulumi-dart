// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'execution_call_log_level.dart';

/// The set of arguments for Execution.
class ExecutionArgs5 {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final Input<String>? argument;

  /// The call logging level associated to this execution.
  final Input<ExecutionCallLogLevel>? callLogLevel;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> workflowId;

  ExecutionArgs5({
    this.argument,
    this.callLogLevel,
    this.labels,
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
          Input.mapOptionalInputValue<ExecutionCallLogLevel, String>(
              callLogLevelValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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

  factory ExecutionArgs5.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs5(
      argument: Input.asOptionalInput<String>(map['argument']),
      callLogLevel:
          Input.asOptionalInput<ExecutionCallLogLevel>(map['callLogLevel']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workflowId: Input.asInput<String>(map['workflowId']),
    );
  }
}
