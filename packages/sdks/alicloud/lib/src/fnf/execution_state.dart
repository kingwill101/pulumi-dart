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
    this.executionName,
    this.flowName,
    this.input,
    this.status,
  });

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
      executionName: map['executionName'] == null ? null : (map['executionName'] as String).input(),
      flowName: map['flowName'] == null ? null : (map['flowName'] as String).input(),
      input: map['input'] == null ? null : (map['input'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

