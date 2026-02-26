// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionRetryStrategyEvaluateOnExit {
  /// Specifies the action to take if all of the specified conditions (onStatusReason, onReason, and onExitCode) are met. The values aren't case sensitive.
  final String action;

  /// Contains a glob pattern to match against the decimal representation of the ExitCode returned for a job.
  final String onExitCode;

  /// Contains a glob pattern to match against the Reason returned for a job.
  final String onReason;

  /// Contains a glob pattern to match against the StatusReason returned for a job.
  final String onStatusReason;

  GetJobDefinitionRetryStrategyEvaluateOnExit({
    required this.action,
    required this.onExitCode,
    required this.onReason,
    required this.onStatusReason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['onExitCode'] = onExitCode;
    map['onReason'] = onReason;
    map['onStatusReason'] = onStatusReason;
    return map;
  }

  factory GetJobDefinitionRetryStrategyEvaluateOnExit.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionRetryStrategyEvaluateOnExit(
      action: map['action'] as String,
      onExitCode: map['onExitCode'] as String,
      onReason: map['onReason'] as String,
      onStatusReason: map['onStatusReason'] as String,
    );
  }
}
