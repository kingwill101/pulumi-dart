// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionRetryStrategyEvaluateOnExit {
  /// Action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: <span pulumi-lang-nodejs="`retry`" pulumi-lang-dotnet="`Retry`" pulumi-lang-go="`retry`" pulumi-lang-python="`retry`" pulumi-lang-yaml="`retry`" pulumi-lang-java="`retry`">`retry`</span>, <span pulumi-lang-nodejs="`exit`" pulumi-lang-dotnet="`Exit`" pulumi-lang-go="`exit`" pulumi-lang-python="`exit`" pulumi-lang-yaml="`exit`" pulumi-lang-java="`exit`">`exit`</span>.
  final String action;

  /// Glob pattern to match against the decimal representation of the exit code returned for a job.
  final String? onExitCode;

  /// Glob pattern to match against the reason returned for a job.
  final String? onReason;

  /// Glob pattern to match against the status reason returned for a job.
  final String? onStatusReason;

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
