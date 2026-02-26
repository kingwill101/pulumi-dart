// ignore_for_file: unused_element, unnecessary_cast

class ApplicationSchedulerConfiguration {
  /// Maximum concurrent job runs on this application. Valid range is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>. Defaults to <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span>.
  final int? maxConcurrentRuns;

  /// Maximum duration in minutes for the job in QUEUED state. Valid range is from <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span> to <span pulumi-lang-nodejs="`720`" pulumi-lang-dotnet="`720`" pulumi-lang-go="`720`" pulumi-lang-python="`720`" pulumi-lang-yaml="`720`" pulumi-lang-java="`720`">`720`</span>. Defaults to <span pulumi-lang-nodejs="`360`" pulumi-lang-dotnet="`360`" pulumi-lang-go="`360`" pulumi-lang-python="`360`" pulumi-lang-yaml="`360`" pulumi-lang-java="`360`">`360`</span>.
  final int? queueTimeoutMinutes;

  ApplicationSchedulerConfiguration({
    this.maxConcurrentRuns,
    this.queueTimeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxConcurrentRunsValue = maxConcurrentRuns;
    if (maxConcurrentRunsValue != null) {
      map['maxConcurrentRuns'] = maxConcurrentRunsValue;
    }
    final queueTimeoutMinutesValue = queueTimeoutMinutes;
    if (queueTimeoutMinutesValue != null) {
      map['queueTimeoutMinutes'] = queueTimeoutMinutesValue;
    }
    return map;
  }

  factory ApplicationSchedulerConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationSchedulerConfiguration(
      maxConcurrentRuns: map['maxConcurrentRuns'] == null
          ? null
          : map['maxConcurrentRuns'] as int,
      queueTimeoutMinutes: map['queueTimeoutMinutes'] == null
          ? null
          : map['queueTimeoutMinutes'] as int,
    );
  }
}
