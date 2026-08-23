// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobQueueJobStateTimeLimitAction {
  final pulumi.Input<String> action;
  final pulumi.Input<int> maxTimeSeconds;
  final pulumi.Input<String> reason;
  /// Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  final pulumi.Input<String> state;

  /// Creates a new [GetJobQueueJobStateTimeLimitAction].
  /// [action] Required.
  /// [maxTimeSeconds] Required.
  /// [reason] Required.
  /// [state] Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
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
      maxTimeSeconds: pulumi.Input.fromValue(map['maxTimeSeconds'] as int),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
