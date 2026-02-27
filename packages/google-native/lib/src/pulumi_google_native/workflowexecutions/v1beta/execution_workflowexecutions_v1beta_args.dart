// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_call_log_level_workflowexecutions_v1beta.dart';

/// The set of arguments for Execution.
class ExecutionWorkflowexecutionsV1betaArgs {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final pulumi.Input<String>? argument;

  /// The call logging level associated to this execution.
  final pulumi.Input<ExecutionCallLogLevelWorkflowexecutionsV1beta>?
      callLogLevel;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  ExecutionWorkflowexecutionsV1betaArgs({
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
      map['callLogLevel'] = pulumi.Input.mapOptionalInputValue<
          ExecutionCallLogLevelWorkflowexecutionsV1beta,
          String>(callLogLevelValue, (value) => value.value);
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

  factory ExecutionWorkflowexecutionsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return ExecutionWorkflowexecutionsV1betaArgs(
      argument: pulumi.Input.asOptionalInput<String>(map['argument']),
      callLogLevel: pulumi.Input.asOptionalInput<
          ExecutionCallLogLevelWorkflowexecutionsV1beta>(map['callLogLevel']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workflowId: pulumi.Input.asInput<String>(map['workflowId']),
    );
  }
}
