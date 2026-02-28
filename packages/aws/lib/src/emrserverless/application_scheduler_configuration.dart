// ignore_for_file: unused_element, unnecessary_cast

class ApplicationSchedulerConfiguration {
  /// Maximum concurrent job runs on this application. Valid range is `1` to `1000`. Defaults to `15`.
  final int? maxConcurrentRuns;

  /// Maximum duration in minutes for the job in QUEUED state. Valid range is from `15` to `720`. Defaults to `360`.
  final int? queueTimeoutMinutes;

  /// Creates a new [ApplicationSchedulerConfiguration].
  /// [maxConcurrentRuns] Maximum concurrent job runs on this application. Valid range is `1` to `1000`. Defaults to `15`.
  /// [queueTimeoutMinutes] Maximum duration in minutes for the job in QUEUED state. Valid range is from `15` to `720`. Defaults to `360`.
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
