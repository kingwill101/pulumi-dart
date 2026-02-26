// ignore_for_file: unused_element, unnecessary_cast

class JobQueueJobStateTimeLimitAction {
  /// The action to take when a job is at the head of the job queue in the specified state for the specified period of time. Valid values include `"CANCEL"`
  final String action;

  /// The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken. Valid values include integers between <span pulumi-lang-nodejs="`600`" pulumi-lang-dotnet="`600`" pulumi-lang-go="`600`" pulumi-lang-python="`600`" pulumi-lang-yaml="`600`" pulumi-lang-java="`600`">`600`</span> & <span pulumi-lang-nodejs="`86400`" pulumi-lang-dotnet="`86400`" pulumi-lang-go="`86400`" pulumi-lang-python="`86400`" pulumi-lang-yaml="`86400`" pulumi-lang-java="`86400`">`86400`</span>
  final int maxTimeSeconds;

  /// The reason to log for the action being taken.
  final String reason;

  /// The state of the job needed to trigger the action. Valid values include `"RUNNABLE"`.
  final String state;

  JobQueueJobStateTimeLimitAction({
    required this.action,
    required this.maxTimeSeconds,
    required this.reason,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['maxTimeSeconds'] = maxTimeSeconds;
    map['reason'] = reason;
    map['state'] = state;
    return map;
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
