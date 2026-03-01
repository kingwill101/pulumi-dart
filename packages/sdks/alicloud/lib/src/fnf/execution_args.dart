// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fnf_execution_execution_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_fnf_execution_execution_args_doc}
class ExecutionArgs {
  /// The name of the execution.
  final pulumi.Input<String> executionName;
  /// The name of the flow.
  final pulumi.Input<String> flowName;
  /// The Input information for this execution.
  final pulumi.Input<String>? input;
  /// The status of the resource. Valid values: `Stopped`.
  final pulumi.Input<String>? status;

  /// Creates a new [ExecutionArgs].
  /// [executionName] The name of the execution.
  /// [flowName] The name of the flow.
  /// [input] The Input information for this execution.
  /// [status] The status of the resource. Valid values: `Stopped`.
  ExecutionArgs({
    required pulumi.Output<String> executionName,
    required pulumi.Output<String> flowName,
    pulumi.Output<String>? input,
    pulumi.Output<String>? status,
  }) :
      executionName = pulumi.Input.asInput<String>(executionName),
      flowName = pulumi.Input.asInput<String>(flowName),
      input = pulumi.Input.asOptionalInput<String>(input),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionName': executionName,
      'flowName': flowName,
      'input': ?input,
      'status': ?status,
    };
  }

  factory ExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs(
      executionName: pulumi.Output.create<String>(map['executionName'] as String),
      flowName: pulumi.Output.create<String>(map['flowName'] as String),
      input: map['input'] == null ? null : pulumi.Output.create<String>(map['input'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

