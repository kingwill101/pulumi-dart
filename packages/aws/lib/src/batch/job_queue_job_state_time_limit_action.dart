// ignore_for_file: unused_element, unnecessary_cast

class JobQueueJobStateTimeLimitAction {
  /// The action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  final String action;

  /// The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between `600` & `86400`
  final int maxTimeSeconds;

  /// The reason to log for the action being taken.
  final String reason;

  /// The state of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
  final String state;

  /// Creates a new [JobQueueJobStateTimeLimitAction].
  /// [action] The action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  /// [maxTimeSeconds] The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between `600` & `86400`
  /// [reason] The reason to log for the action being taken.
  /// [state] The state of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
  JobQueueJobStateTimeLimitAction({
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
      action: map['action'] as String,
      maxTimeSeconds: map['maxTimeSeconds'] as int,
      reason: map['reason'] as String,
      state: map['state'] as String,
    );
  }
}
