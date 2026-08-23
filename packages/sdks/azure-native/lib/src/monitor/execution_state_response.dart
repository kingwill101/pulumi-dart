// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the current execution state of an SLI.
class ExecutionStateResponse {
  /// A descriptive message related to the execution state.
  final pulumi.Input<String>? message;
  /// The execution state value.
  final pulumi.Input<String> state;

  /// Creates a new [ExecutionStateResponse].
  /// [message] A descriptive message related to the execution state.
  /// [state] The execution state value.
  const ExecutionStateResponse({
    this.message,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'state': state,
    };
  }

  factory ExecutionStateResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionStateResponse(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
