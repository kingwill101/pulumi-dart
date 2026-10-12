// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobQueueJobStateTimeLimitAction {
  /// Action to take when a job is at the head of the job queue in the specified state for the specified period of time.
  final pulumi.Input<String> action;
  /// Approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken.
  final pulumi.Input<int> maxTimeSeconds;
  /// Reason to log for the action being taken.
  final pulumi.Input<String> reason;
  /// Ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  final pulumi.Input<String> state;

  /// Creates a new [GetJobQueueJobStateTimeLimitAction].
  /// [action] Action to take when a job is at the head of the job queue in the specified state for the specified period of time.
  /// [maxTimeSeconds] Approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken.
  /// [reason] Reason to log for the action being taken.
  /// [state] Ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  const GetJobQueueJobStateTimeLimitAction({
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

  factory GetJobQueueJobStateTimeLimitAction.fromMap(Map<String, dynamic> map) {
    return GetJobQueueJobStateTimeLimitAction(
      action: pulumi.Input.fromValue(map['action'] as String),
      maxTimeSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxTimeSeconds'])),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
