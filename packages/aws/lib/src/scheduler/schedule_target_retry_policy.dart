// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetRetryPolicy {
  /// Maximum amount of time, in seconds, to continue to make retry attempts. Ranges from `60` to `86400` (default).
  final int? maximumEventAgeInSeconds;

  /// Maximum number of retry attempts to make before the request fails. Ranges from `0` to `185` (default).
  final int? maximumRetryAttempts;

  /// Creates a new [ScheduleTargetRetryPolicy].
  /// [maximumEventAgeInSeconds] Maximum amount of time, in seconds, to continue to make retry attempts. Ranges from `60` to `86400` (default).
  /// [maximumRetryAttempts] Maximum number of retry attempts to make before the request fails. Ranges from `0` to `185` (default).
  ScheduleTargetRetryPolicy({
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumEventAgeInSecondsValue = maximumEventAgeInSeconds;
    if (maximumEventAgeInSecondsValue != null) {
      map['maximumEventAgeInSeconds'] = maximumEventAgeInSecondsValue;
    }
    final maximumRetryAttemptsValue = maximumRetryAttempts;
    if (maximumRetryAttemptsValue != null) {
      map['maximumRetryAttempts'] = maximumRetryAttemptsValue;
    }
    return map;
  }

  factory ScheduleTargetRetryPolicy.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetRetryPolicy(
      maximumEventAgeInSeconds: map['maximumEventAgeInSeconds'] == null
          ? null
          : map['maximumEventAgeInSeconds'] as int,
      maximumRetryAttempts: map['maximumRetryAttempts'] == null
          ? null
          : map['maximumRetryAttempts'] as int,
    );
  }
}
