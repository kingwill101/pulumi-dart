// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsInvocationsInvocationInvokeInstance {
  /// The start time of the execution.
  final pulumi.Input<String> creationTime;
  /// The size of truncated and discarded text when the value of the Output response parameter exceeds 24 KB in size.
  final pulumi.Input<int> dropped;
  final pulumi.Input<String> errorCode;
  /// Details about the reason why the command failed to be sent or run.
  final pulumi.Input<String> errorInfo;
  /// The exit code of the execution.
  final pulumi.Input<int> exitCode;
  /// The end time of the execution.
  final pulumi.Input<String> finishTime;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> instanceInvokeStatus;
  /// The execution state on a single instance. Valid values: `Pending`, `Scheduled`, `Running`, `Success`, `Failed`, `Stopping`, `Stopped`, `PartialFailed`.
  final pulumi.Input<String> invocationStatus;
  /// The output of the command.
  final pulumi.Input<String> output;
  /// The number of times that the command is run on the instance.
  final pulumi.Input<int> repeats;
  /// The time when the command started to be run on the instance.
  final pulumi.Input<String> startTime;
  /// The time when the command stopped being run on the instance. If you call the StopInvocation operation to manually stop the execution, the value is the time when you call the operation.
  final pulumi.Input<String> stopTime;
  /// Indicates whether the commands are to be automatically run.
  /// * `error_code	` - The code that indicates why the command failed to be sent or run.
  /// * `instance_invoke_status	` - **Note:** We recommend that you ignore this parameter and check the value of the `invocation_status` response parameter for the overall execution state.
  final pulumi.Input<bool> timed;
  /// The time when the execution state was updated.
  final pulumi.Input<String> updateTime;

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
      creationTime: (map['creationTime'] as String).input(),
      dropped: (map['dropped'] as int).input(),
      errorCode: (map['errorCode'] as String).input(),
      errorInfo: (map['errorInfo'] as String).input(),
      exitCode: (map['exitCode'] as int).input(),
      finishTime: (map['finishTime'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceInvokeStatus: (map['instanceInvokeStatus'] as String).input(),
      invocationStatus: (map['invocationStatus'] as String).input(),
      output: (map['output'] as String).input(),
      repeats: (map['repeats'] as int).input(),
      startTime: (map['startTime'] as String).input(),
      stopTime: (map['stopTime'] as String).input(),
      timed: (map['timed'] as bool).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

