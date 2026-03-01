// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_call_log_level.dart';

/// {@template pulumi_workflowexecutions_v1_execution_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_workflowexecutions_v1_execution_args_doc}
class ExecutionArgs {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final pulumi.Input<String>? argument;

  /// The call logging level associated to this execution.
  final pulumi.Input<ExecutionCallLogLevel>? callLogLevel;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  /// Creates a new [ExecutionArgs].
  /// [argument] Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  /// [callLogLevel] The call logging level associated to this execution.
  /// [labels] Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  /// [location] Optional.
  /// [project] Optional.
  /// [workflowId] Required.
  ExecutionArgs({
    String? argument,
    ExecutionCallLogLevel? callLogLevel,
    Map<String, String>? labels,
    String? location,
    String? project,
    required String workflowId,
  }) : argument = pulumi.Input.asOptionalInput<String>(argument),
       callLogLevel = pulumi.Input.asOptionalInput<ExecutionCallLogLevel>(
         callLogLevel,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       workflowId = pulumi.Input.asInput<String>(workflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'callLogLevel':
          ?pulumi.Input.mapOptionalInputValue<ExecutionCallLogLevel, String>(
            callLogLevel,
            (value) => value.value,
          ),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'workflowId': workflowId,
    };
  }

  factory ExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs(
      argument: map['argument'] == null ? null : map['argument'] as String,
      callLogLevel: map['callLogLevel'] == null
          ? null
          : ExecutionCallLogLevel.fromValue(map['callLogLevel'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workflowId: map['workflowId'] as String,
    );
  }
}
