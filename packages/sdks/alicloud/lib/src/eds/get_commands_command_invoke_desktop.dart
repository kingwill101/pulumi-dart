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
  GetCommandsCommandInvokeDesktop({
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
      desktopId: (map['desktopId'] as String).input(),
      dropped: (map['dropped'] as int).input(),
      errorCode: (map['errorCode'] as String).input(),
      errorInfo: (map['errorInfo'] as String).input(),
      exitCode: (map['exitCode'] as String).input(),
      finishTime: (map['finishTime'] as String).input(),
      invocationStatus: (map['invocationStatus'] as String).input(),
      output: (map['output'] as String).input(),
      repeats: (map['repeats'] as int).input(),
      startTime: (map['startTime'] as String).input(),
      stopTime: (map['stopTime'] as String).input(),
    );
  }
}

