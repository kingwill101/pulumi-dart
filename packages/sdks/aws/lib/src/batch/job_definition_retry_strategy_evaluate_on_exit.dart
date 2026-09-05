// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionRetryStrategyEvaluateOnExit {
  /// Action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: `retry`, `exit`.
  final pulumi.Input<String> action;
  /// Glob pattern to match against the decimal representation of the exit code returned for a job.
  final pulumi.Input<String?>? onExitCode;
  /// Glob pattern to match against the reason returned for a job.
  final pulumi.Input<String?>? onReason;
  /// Glob pattern to match against the status reason returned for a job.
  final pulumi.Input<String?>? onStatusReason;

  /// Creates a new [JobDefinitionRetryStrategyEvaluateOnExit].
  /// [action] Action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: `retry`, `exit`.
  /// [onExitCode] Glob pattern to match against the decimal representation of the exit code returned for a job.
  /// [onReason] Glob pattern to match against the reason returned for a job.
  /// [onStatusReason] Glob pattern to match against the status reason returned for a job.
  const JobDefinitionRetryStrategyEvaluateOnExit({
    required this.action,
    this.onExitCode,
    this.onReason,
    this.onStatusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'onExitCode': ?onExitCode,
      'onReason': ?onReason,
      'onStatusReason': ?onStatusReason,
    };
  }

  factory JobDefinitionRetryStrategyEvaluateOnExit.fromMap(Map<String, dynamic> map) {
    return JobDefinitionRetryStrategyEvaluateOnExit(
      action: pulumi.Input.fromValue(map['action'] as String),
      onExitCode: (() { final guardedValue = map['onExitCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onReason: (() { final guardedValue = map['onReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onStatusReason: (() { final guardedValue = map['onStatusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
