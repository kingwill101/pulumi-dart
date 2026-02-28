// ignore_for_file: unused_element, unnecessary_cast

class EventTargetRetryPolicy {
  /// The age in seconds to continue to make retry attempts.
  final int? maximumEventAgeInSeconds;

  /// maximum number of retry attempts to make before the request fails
  final int? maximumRetryAttempts;

  /// Creates a new [EventTargetRetryPolicy].
  /// [maximumEventAgeInSeconds] The age in seconds to continue to make retry attempts.
  /// [maximumRetryAttempts] maximum number of retry attempts to make before the request fails
  EventTargetRetryPolicy({
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

  factory EventTargetRetryPolicy.fromMap(Map<String, dynamic> map) {
    return EventTargetRetryPolicy(
      maximumEventAgeInSeconds: map['maximumEventAgeInSeconds'] == null
          ? null
          : map['maximumEventAgeInSeconds'] as int,
      maximumRetryAttempts: map['maximumRetryAttempts'] == null
          ? null
          : map['maximumRetryAttempts'] as int,
    );
  }
}
