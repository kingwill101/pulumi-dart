// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCommandsCommandInvokeDesktop {
  /// The desktop id of the Desktop.
  final pulumi.Input<String> desktopId;
  /// Output Field Text Length Exceeds 24 KB of Truncated Discarded Text Length.
  final pulumi.Input<int> dropped;
  /// Command of the Failure Or Perform the Reason for the Failure of the Code.
  final pulumi.Input<String> errorCode;
  /// Command of the Failure Or Perform the Reason for the Failure of the Details.
  final pulumi.Input<String> errorInfo;
  /// Command of the Failure Or Perform the Reason for the Failure of the Details.
  final pulumi.Input<String> exitCode;
  /// The Script Process until the End of Time.
  final pulumi.Input<String> finishTime;
  /// A Single Cloud Desktop Script Progress Status.
  final pulumi.Input<String> invocationStatus;
  /// Script the Output of the Process.
  final pulumi.Input<String> output;
  /// Command in the Desktop Implementation.
  final pulumi.Input<int> repeats;
  /// The Script Process on the Desktop, in the Start Timing of the Execution.
  final pulumi.Input<String> startTime;
  /// If You Use the invocation Indicates That the Call of the Time.
  final pulumi.Input<String> stopTime;

  /// Creates a new [GetCommandsCommandInvokeDesktop].
  /// [desktopId] The desktop id of the Desktop.
  /// [dropped] Output Field Text Length Exceeds 24 KB of Truncated Discarded Text Length.
  /// [errorCode] Command of the Failure Or Perform the Reason for the Failure of the Code.
  /// [errorInfo] Command of the Failure Or Perform the Reason for the Failure of the Details.
  /// [exitCode] Command of the Failure Or Perform the Reason for the Failure of the Details.
  /// [finishTime] The Script Process until the End of Time.
  /// [invocationStatus] A Single Cloud Desktop Script Progress Status.
  /// [output] Script the Output of the Process.
  /// [repeats] Command in the Desktop Implementation.
  /// [startTime] The Script Process on the Desktop, in the Start Timing of the Execution.
  /// [stopTime] If You Use the invocation Indicates That the Call of the Time.
  const GetCommandsCommandInvokeDesktop({
    required this.desktopId,
    required this.dropped,
    required this.errorCode,
    required this.errorInfo,
    required this.exitCode,
    required this.finishTime,
    required this.invocationStatus,
    required this.output,
    required this.repeats,
    required this.startTime,
    required this.stopTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopId': desktopId,
      'dropped': dropped,
      'errorCode': errorCode,
      'errorInfo': errorInfo,
      'exitCode': exitCode,
      'finishTime': finishTime,
      'invocationStatus': invocationStatus,
      'output': output,
      'repeats': repeats,
      'startTime': startTime,
      'stopTime': stopTime,
    };
  }

  factory GetCommandsCommandInvokeDesktop.fromMap(Map<String, dynamic> map) {
    return GetCommandsCommandInvokeDesktop(
      desktopId: pulumi.Input.fromValue(map['desktopId'] as String),
      dropped: pulumi.Input.fromValue(map['dropped'] as int),
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorInfo: pulumi.Input.fromValue(map['errorInfo'] as String),
      exitCode: pulumi.Input.fromValue(map['exitCode'] as String),
      finishTime: pulumi.Input.fromValue(map['finishTime'] as String),
      invocationStatus: pulumi.Input.fromValue(map['invocationStatus'] as String),
      output: pulumi.Input.fromValue(map['output'] as String),
      repeats: pulumi.Input.fromValue(map['repeats'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      stopTime: pulumi.Input.fromValue(map['stopTime'] as String),
    );
  }
}

