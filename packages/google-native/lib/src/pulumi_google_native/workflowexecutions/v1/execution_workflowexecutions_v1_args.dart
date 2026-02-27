// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_call_log_level.dart';

/// The set of arguments for Execution.
class ExecutionWorkflowexecutionsV1Args {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final pulumi.Input<String>? argument;

  /// The call logging level associated to this execution.
  final pulumi.Input<ExecutionCallLogLevel>? callLogLevel;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  ExecutionWorkflowexecutionsV1Args({
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
          pulumi.Input.mapOptionalInputValue<ExecutionCallLogLevel, String>(
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

  factory ExecutionWorkflowexecutionsV1Args.fromMap(Map<String, dynamic> map) {
    return ExecutionWorkflowexecutionsV1Args(
      argument: pulumi.Input.asOptionalInput<String>(map['argument']),
      callLogLevel: pulumi.Input.asOptionalInput<ExecutionCallLogLevel>(
          map['callLogLevel']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workflowId: pulumi.Input.asInput<String>(map['workflowId']),
    );
  }
}
