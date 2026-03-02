// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExecutionsExecution {
  /// The name of the execution.
  final pulumi.Input<String> executionName;
  /// The name of the flow.
  final pulumi.Input<String> flowName;
  /// The ID of the Execution. The value formats as `<flow_name>:<execution_name>`.
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
  /// [id] The ID of the Execution. The value formats as `<flow_name>:<execution_name>`.
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
      executionName: (map['executionName'] as String).input(),
      flowName: (map['flowName'] as String).input(),
      id: (map['id'] as String).input(),
      input: (map['input'] as String).input(),
      output: (map['output'] as String).input(),
      startedTime: (map['startedTime'] as String).input(),
      status: (map['status'] as String).input(),
      stoppedTime: (map['stoppedTime'] as String).input(),
    );
  }
}

