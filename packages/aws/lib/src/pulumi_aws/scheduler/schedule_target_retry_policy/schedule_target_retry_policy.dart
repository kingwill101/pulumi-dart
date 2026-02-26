// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetRetryPolicy {
  /// Maximum amount of time, in seconds, to continue to make retry attempts. Ranges from <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> to <span pulumi-lang-nodejs="`86400`" pulumi-lang-dotnet="`86400`" pulumi-lang-go="`86400`" pulumi-lang-python="`86400`" pulumi-lang-yaml="`86400`" pulumi-lang-java="`86400`">`86400`</span> (default).
  final int? maximumEventAgeInSeconds;

  /// Maximum number of retry attempts to make before the request fails. Ranges from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`185`" pulumi-lang-dotnet="`185`" pulumi-lang-go="`185`" pulumi-lang-python="`185`" pulumi-lang-yaml="`185`" pulumi-lang-java="`185`">`185`</span> (default).
  final int? maximumRetryAttempts;

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
