// ignore_for_file: unused_element, unnecessary_cast


class GetJobQueueJobStateTimeLimitAction {
  final String action;
  final int maxTimeSeconds;
  final String reason;
  /// Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  final String state;

  /// Creates a new [GetJobQueueJobStateTimeLimitAction].
  /// [action] Required.
  /// [maxTimeSeconds] Required.
  /// [reason] Required.
  /// [state] Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  GetJobQueueJobStateTimeLimitAction({
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
      action: map['action'] as String,
      maxTimeSeconds: map['maxTimeSeconds'] as int,
      reason: map['reason'] as String,
      state: map['state'] as String,
    );
  }
}

