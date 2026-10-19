// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobQueueJobStateTimeLimitAction {
  /// Action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  final pulumi.Input<String> action;
  /// Approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between `600` & `86400`
  final pulumi.Input<int> maxTimeSeconds;
  /// Reason to log for the action being taken.
  final pulumi.Input<String> reason;
  /// State of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
  final pulumi.Input<String> state;

  /// Creates a new [JobQueueJobStateTimeLimitAction].
  /// [action] Action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  /// [maxTimeSeconds] Approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between `600` & `86400`
  /// [reason] Reason to log for the action being taken.
  /// [state] State of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
  const JobQueueJobStateTimeLimitAction({
    required this.action,
    required this.maxTimeSeconds,
    required this.reason,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'maxTimeSeconds': maxTimeSeconds,
      'reason': reason,
      'state': state,
    };
  }

  factory JobQueueJobStateTimeLimitAction.fromMap(Map<String, dynamic> map) {
    return JobQueueJobStateTimeLimitAction(
      action: pulumi.Input.fromValue(map['action'] as String),
      maxTimeSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxTimeSeconds'])),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
