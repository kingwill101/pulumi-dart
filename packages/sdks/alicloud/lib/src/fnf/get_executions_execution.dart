// ignore_for_file: unused_element, unnecessary_cast


class GetExecutionsExecution {
  /// The name of the execution.
  final String executionName;
  /// The name of the flow.
  final String flowName;
  /// The ID of the Execution. The value formats as `<flow_name>:<execution_name>`.
  final String id;
  /// The Input information for this execution.
  final String input;
  /// The output of the execution.
  final String output;
  /// The started time of the execution.
  final String startedTime;
  /// The status of the resource.
  final String status;
  /// The stopped time of the execution.
  final String stoppedTime;

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
      executionName: map['executionName'] as String,
      flowName: map['flowName'] as String,
      id: map['id'] as String,
      input: map['input'] as String,
      output: map['output'] as String,
      startedTime: map['startedTime'] as String,
      status: map['status'] as String,
      stoppedTime: map['stoppedTime'] as String,
    );
  }
}

