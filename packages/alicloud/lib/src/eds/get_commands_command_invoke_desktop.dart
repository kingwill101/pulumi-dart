// ignore_for_file: unused_element, unnecessary_cast


class GetCommandsCommandInvokeDesktop {
  /// The desktop id of the Desktop.
  final String desktopId;
  /// Output Field Text Length Exceeds 24 KB of Truncated Discarded Text Length.
  final int dropped;
  /// Command of the Failure Or Perform the Reason for the Failure of the Code.
  final String errorCode;
  /// Command of the Failure Or Perform the Reason for the Failure of the Details.
  final String errorInfo;
  /// Command of the Failure Or Perform the Reason for the Failure of the Details.
  final String exitCode;
  /// The Script Process until the End of Time.
  final String finishTime;
  /// A Single Cloud Desktop Script Progress Status.
  final String invocationStatus;
  /// Script the Output of the Process.
  final String output;
  /// Command in the Desktop Implementation.
  final int repeats;
  /// The Script Process on the Desktop, in the Start Timing of the Execution.
  final String startTime;
  /// If You Use the invocation Indicates That the Call of the Time.
  final String stopTime;

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
      desktopId: map['desktopId'] as String,
      dropped: map['dropped'] as int,
      errorCode: map['errorCode'] as String,
      errorInfo: map['errorInfo'] as String,
      exitCode: map['exitCode'] as String,
      finishTime: map['finishTime'] as String,
      invocationStatus: map['invocationStatus'] as String,
      output: map['output'] as String,
      repeats: map['repeats'] as int,
      startTime: map['startTime'] as String,
      stopTime: map['stopTime'] as String,
    );
  }
}

