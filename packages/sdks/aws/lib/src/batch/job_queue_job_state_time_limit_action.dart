// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobQueueJobStateTimeLimitAction {
  /// The action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  final pulumi.Input<String> action;
  /// The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between `600` & `86400`
  final pulumi.Input<int> maxTimeSeconds;
  /// The reason to log for the action being taken.
  final pulumi.Input<String> reason;
  /// The state of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
  final pulumi.Input<String> state;

  /// Creates a new [JobQueueJobStateTimeLimitAction].
  /// [action] The action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  /// [maxTimeSeconds] The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between `600` & `86400`
  /// [reason] The reason to log for the action being taken.
  /// [state] The state of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
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
      maxTimeSeconds: pulumi.Input.fromValue(map['maxTimeSeconds'] as int),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
