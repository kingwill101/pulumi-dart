// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExecutionsExecution {
  /// The name of the execution.
  final pulumi.Input<String> executionName;

  /// The name of the flow.
  final pulumi.Input<String> flowName;

  /// The ID of the Execution. The value formats as `&lt;flow_name&gt;:&lt;execution_name&gt;`.
  final pulumi.Input<String> id;

  /// The Input information for this execution.
  final pulumi.Input<String> input;

  /// The output of the execution.
  final pulumi.Input<String> output;

  /// The started time of the execution.
  final pulumi.Input<String> startedTime;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// The stopped time of the execution.
  final pulumi.Input<String> stoppedTime;

  /// Creates a new [GetExecutionsExecution].
  /// [executionName] The name of the execution.
  /// [flowName] The name of the flow.
  /// [id] The ID of the Execution. The value formats as `&lt;flow_name&gt;:&lt;execution_name&gt;`.
  /// [input] The Input information for this execution.
  /// [output] The output of the execution.
  /// [startedTime] The started time of the execution.
  /// [status] The status of the resource.
  /// [stoppedTime] The stopped time of the execution.
  GetExecutionsExecution({
    required this.executionName,
    required this.flowName,
    required this.id,
    required this.input,
    required this.output,
    required this.startedTime,
    required this.status,
    required this.stoppedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionName': executionName,
      'flowName': flowName,
      'id': id,
      'input': input,
      'output': output,
      'startedTime': startedTime,
      'status': status,
      'stoppedTime': stoppedTime,
    };
  }

  factory GetExecutionsExecution.fromMap(Map<String, dynamic> map) {
    return GetExecutionsExecution(
      executionName: pulumi.Input.fromValue(map['executionName'] as String),
      flowName: pulumi.Input.fromValue(map['flowName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      input: pulumi.Input.fromValue(map['input'] as String),
      output: pulumi.Input.fromValue(map['output'] as String),
      startedTime: pulumi.Input.fromValue(map['startedTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      stoppedTime: pulumi.Input.fromValue(map['stoppedTime'] as String),
    );
  }
}
