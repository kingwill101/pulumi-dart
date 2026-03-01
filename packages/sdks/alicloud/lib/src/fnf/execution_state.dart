// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Execution resources.
class ExecutionState {
  /// The name of the execution.
  final pulumi.Input<String>? executionName;
  /// The name of the flow.
  final pulumi.Input<String>? flowName;
  /// The Input information for this execution.
  final pulumi.Input<String>? input;
  /// The status of the resource. Valid values: `Stopped`.
  final pulumi.Input<String>? status;

  /// Creates a new [ExecutionState].
  /// [executionName] The name of the execution.
  /// [flowName] The name of the flow.
  /// [input] The Input information for this execution.
  /// [status] The status of the resource. Valid values: `Stopped`.
  ExecutionState({
    pulumi.Output<String>? executionName,
    pulumi.Output<String>? flowName,
    pulumi.Output<String>? input,
    pulumi.Output<String>? status,
  }) :
      executionName = pulumi.Input.asOptionalInput<String>(executionName),
      flowName = pulumi.Input.asOptionalInput<String>(flowName),
      input = pulumi.Input.asOptionalInput<String>(input),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionName': ?executionName,
      'flowName': ?flowName,
      'input': ?input,
      'status': ?status,
    };
  }

  factory ExecutionState.fromMap(Map<String, dynamic> map) {
    return ExecutionState(
      executionName: map['executionName'] == null ? null : pulumi.Output.create<String>(map['executionName'] as String),
      flowName: map['flowName'] == null ? null : pulumi.Output.create<String>(map['flowName'] as String),
      input: map['input'] == null ? null : pulumi.Output.create<String>(map['input'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

