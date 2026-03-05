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
    required this.executionName,
    required this.flowName,
    this.input,
    this.status,
  });

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
      executionName: pulumi.Input.fromValue(map['executionName'] as String),
      flowName: pulumi.Input.fromValue(map['flowName'] as String),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

