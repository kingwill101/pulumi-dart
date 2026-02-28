// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionRetryStrategyEvaluateOnExit {
  /// Action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: `retry`, `exit`.
  final String action;

  /// Glob pattern to match against the decimal representation of the exit code returned for a job.
  final String? onExitCode;

  /// Glob pattern to match against the reason returned for a job.
  final String? onReason;

  /// Glob pattern to match against the status reason returned for a job.
  final String? onStatusReason;

  /// Creates a new [JobDefinitionRetryStrategyEvaluateOnExit].
  /// [action] Action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: `retry`, `exit`.
  /// [onExitCode] Glob pattern to match against the decimal representation of the exit code returned for a job.
  /// [onReason] Glob pattern to match against the reason returned for a job.
  /// [onStatusReason] Glob pattern to match against the status reason returned for a job.
  JobDefinitionRetryStrategyEvaluateOnExit({
    required this.action,
    this.onExitCode,
    this.onReason,
    this.onStatusReason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final onExitCodeValue = onExitCode;
    if (onExitCodeValue != null) {
      map['onExitCode'] = onExitCodeValue;
    }
    final onReasonValue = onReason;
    if (onReasonValue != null) {
      map['onReason'] = onReasonValue;
    }
    final onStatusReasonValue = onStatusReason;
    if (onStatusReasonValue != null) {
      map['onStatusReason'] = onStatusReasonValue;
    }
    return map;
  }

  factory JobDefinitionRetryStrategyEvaluateOnExit.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionRetryStrategyEvaluateOnExit(
      action: map['action'] as String,
      onExitCode:
          map['onExitCode'] == null ? null : map['onExitCode'] as String,
      onReason: map['onReason'] == null ? null : map['onReason'] as String,
      onStatusReason: map['onStatusReason'] == null
          ? null
          : map['onStatusReason'] as String,
    );
  }
}
