// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionHookMicrovmHook {
  /// Whether the resume hook is `ENABLED` or `DISABLED`.
  final pulumi.Input<String> resume;
  /// Maximum time in seconds for the resume hook to complete.
  final pulumi.Input<int> resumeTimeoutInSeconds;
  /// Whether the run hook is `ENABLED` or `DISABLED`.
  final pulumi.Input<String> run;
  /// Maximum time in seconds for the run hook to complete.
  final pulumi.Input<int> runTimeoutInSeconds;
  /// Whether the suspend hook is `ENABLED` or `DISABLED`.
  final pulumi.Input<String> suspend;
  /// Maximum time in seconds for the suspend hook to complete.
  final pulumi.Input<int> suspendTimeoutInSeconds;
  /// Whether the terminate hook is `ENABLED` or `DISABLED`.
  final pulumi.Input<String> terminate;
  /// Maximum time in seconds for the terminate hook to complete.
  final pulumi.Input<int> terminateTimeoutInSeconds;

  /// Creates a new [GetImageVersionHookMicrovmHook].
  /// [resume] Whether the resume hook is `ENABLED` or `DISABLED`.
  /// [resumeTimeoutInSeconds] Maximum time in seconds for the resume hook to complete.
  /// [run] Whether the run hook is `ENABLED` or `DISABLED`.
  /// [runTimeoutInSeconds] Maximum time in seconds for the run hook to complete.
  /// [suspend] Whether the suspend hook is `ENABLED` or `DISABLED`.
  /// [suspendTimeoutInSeconds] Maximum time in seconds for the suspend hook to complete.
  /// [terminate] Whether the terminate hook is `ENABLED` or `DISABLED`.
  /// [terminateTimeoutInSeconds] Maximum time in seconds for the terminate hook to complete.
  const GetImageVersionHookMicrovmHook({
    required this.resume,
    required this.resumeTimeoutInSeconds,
    required this.run,
    required this.runTimeoutInSeconds,
    required this.suspend,
    required this.suspendTimeoutInSeconds,
    required this.terminate,
    required this.terminateTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resume': resume,
      'resumeTimeoutInSeconds': resumeTimeoutInSeconds,
      'run': run,
      'runTimeoutInSeconds': runTimeoutInSeconds,
      'suspend': suspend,
      'suspendTimeoutInSeconds': suspendTimeoutInSeconds,
      'terminate': terminate,
      'terminateTimeoutInSeconds': terminateTimeoutInSeconds,
    };
  }

  factory GetImageVersionHookMicrovmHook.fromMap(Map<String, dynamic> map) {
    return GetImageVersionHookMicrovmHook(
      resume: pulumi.Input.fromValue(map['resume'] as String),
      resumeTimeoutInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['resumeTimeoutInSeconds'])),
      run: pulumi.Input.fromValue(map['run'] as String),
      runTimeoutInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['runTimeoutInSeconds'])),
      suspend: pulumi.Input.fromValue(map['suspend'] as String),
      suspendTimeoutInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['suspendTimeoutInSeconds'])),
      terminate: pulumi.Input.fromValue(map['terminate'] as String),
      terminateTimeoutInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['terminateTimeoutInSeconds'])),
    );
  }
}
