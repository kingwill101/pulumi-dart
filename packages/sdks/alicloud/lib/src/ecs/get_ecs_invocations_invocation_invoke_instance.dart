// ignore_for_file: unused_element, unnecessary_cast


class GetEcsInvocationsInvocationInvokeInstance {
  /// The start time of the execution.
  final String creationTime;
  /// The size of truncated and discarded text when the value of the Output response parameter exceeds 24 KB in size.
  final int dropped;
  final String errorCode;
  /// Details about the reason why the command failed to be sent or run.
  final String errorInfo;
  /// The exit code of the execution.
  final int exitCode;
  /// The end time of the execution.
  final String finishTime;
  /// The ID of the instance.
  final String instanceId;
  final String instanceInvokeStatus;
  /// The execution state on a single instance. Valid values: `Pending`, `Scheduled`, `Running`, `Success`, `Failed`, `Stopping`, `Stopped`, `PartialFailed`.
  final String invocationStatus;
  /// The output of the command.
  final String output;
  /// The number of times that the command is run on the instance.
  final int repeats;
  /// The time when the command started to be run on the instance.
  final String startTime;
  /// The time when the command stopped being run on the instance. If you call the StopInvocation operation to manually stop the execution, the value is the time when you call the operation.
  final String stopTime;
  /// Indicates whether the commands are to be automatically run.
  /// * `error_code	` - The code that indicates why the command failed to be sent or run.
  /// * `instance_invoke_status	` - **Note:** We recommend that you ignore this parameter and check the value of the `invocation_status` response parameter for the overall execution state.
  final bool timed;
  /// The time when the execution state was updated.
  final String updateTime;

  /// Creates a new [GetEcsInvocationsInvocationInvokeInstance].
  /// [creationTime] The start time of the execution.
  /// [dropped] The size of truncated and discarded text when the value of the Output response parameter exceeds 24 KB in size.
  /// [errorCode] Required.
  /// [errorInfo] Details about the reason why the command failed to be sent or run.
  /// [exitCode] The exit code of the execution.
  /// [finishTime] The end time of the execution.
  /// [instanceId] The ID of the instance.
  /// [instanceInvokeStatus] Required.
  /// [invocationStatus] The execution state on a single instance. Valid values: `Pending`, `Scheduled`, `Running`, `Success`, `Failed`, `Stopping`, `Stopped`, `PartialFailed`.
  /// [output] The output of the command.
  /// [repeats] The number of times that the command is run on the instance.
  /// [startTime] The time when the command started to be run on the instance.
  /// [stopTime] The time when the command stopped being run on the instance. If you call the StopInvocation operation to manually stop the execution, the value is the time when you call the operation.
  /// [timed] Indicates whether the commands are to be automatically run.
  /// [updateTime] The time when the execution state was updated.
  GetEcsInvocationsInvocationInvokeInstance({
    required this.creationTime,
    required this.dropped,
    required this.errorCode,
    required this.errorInfo,
    required this.exitCode,
    required this.finishTime,
    required this.instanceId,
    required this.instanceInvokeStatus,
    required this.invocationStatus,
    required this.output,
    required this.repeats,
    required this.startTime,
    required this.stopTime,
    required this.timed,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'dropped': dropped,
      'errorCode': errorCode,
      'errorInfo': errorInfo,
      'exitCode': exitCode,
      'finishTime': finishTime,
      'instanceId': instanceId,
      'instanceInvokeStatus': instanceInvokeStatus,
      'invocationStatus': invocationStatus,
      'output': output,
      'repeats': repeats,
      'startTime': startTime,
      'stopTime': stopTime,
      'timed': timed,
      'updateTime': updateTime,
    };
  }

  factory GetEcsInvocationsInvocationInvokeInstance.fromMap(Map<String, dynamic> map) {
    return GetEcsInvocationsInvocationInvokeInstance(
      creationTime: map['creationTime'] as String,
      dropped: map['dropped'] as int,
      errorCode: map['errorCode'] as String,
      errorInfo: map['errorInfo'] as String,
      exitCode: map['exitCode'] as int,
      finishTime: map['finishTime'] as String,
      instanceId: map['instanceId'] as String,
      instanceInvokeStatus: map['instanceInvokeStatus'] as String,
      invocationStatus: map['invocationStatus'] as String,
      output: map['output'] as String,
      repeats: map['repeats'] as int,
      startTime: map['startTime'] as String,
      stopTime: map['stopTime'] as String,
      timed: map['timed'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}

