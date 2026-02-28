// ignore_for_file: unused_element, unnecessary_cast

class JobRetryConfig {
  /// The maximum amount of time to wait before retrying a job after it fails.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  final String? maxBackoffDuration;

  /// The time between retries will double maxDoublings times.
  /// A job's retry interval starts at minBackoffDuration,
  /// then doubles maxDoublings times, then increases linearly,
  /// and finally retries retries at intervals of maxBackoffDuration up to retryCount times.
  final int? maxDoublings;

  /// The time limit for retrying a failed job, measured from time when an execution was first attempted.
  /// If specified with retryCount, the job will be retried until both limits are reached.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  final String? maxRetryDuration;

  /// The minimum amount of time to wait before retrying a job after it fails.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  final String? minBackoffDuration;

  /// The number of attempts that the system will make to run a
  /// job using the exponential backoff procedure described by maxDoublings.
  /// Values greater than 5 and negative values are not allowed.
  final int? retryCount;

  /// Creates a new [JobRetryConfig].
  /// [maxBackoffDuration] The maximum amount of time to wait before retrying a job after it fails.
  /// [maxDoublings] The time between retries will double maxDoublings times.
  /// [maxRetryDuration] The time limit for retrying a failed job, measured from time when an execution was first attempted.
  /// [minBackoffDuration] The minimum amount of time to wait before retrying a job after it fails.
  /// [retryCount] The number of attempts that the system will make to run a
  JobRetryConfig({
    this.maxBackoffDuration,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoffDuration,
    this.retryCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxBackoffDurationValue = maxBackoffDuration;
    if (maxBackoffDurationValue != null) {
      map['maxBackoffDuration'] = maxBackoffDurationValue;
    }
    final maxDoublingsValue = maxDoublings;
    if (maxDoublingsValue != null) {
      map['maxDoublings'] = maxDoublingsValue;
    }
    final maxRetryDurationValue = maxRetryDuration;
    if (maxRetryDurationValue != null) {
      map['maxRetryDuration'] = maxRetryDurationValue;
    }
    final minBackoffDurationValue = minBackoffDuration;
    if (minBackoffDurationValue != null) {
      map['minBackoffDuration'] = minBackoffDurationValue;
    }
    final retryCountValue = retryCount;
    if (retryCountValue != null) {
      map['retryCount'] = retryCountValue;
    }
    return map;
  }

  factory JobRetryConfig.fromMap(Map<String, dynamic> map) {
    return JobRetryConfig(
      maxBackoffDuration: map['maxBackoffDuration'] == null
          ? null
          : map['maxBackoffDuration'] as String,
      maxDoublings:
          map['maxDoublings'] == null ? null : map['maxDoublings'] as int,
      maxRetryDuration: map['maxRetryDuration'] == null
          ? null
          : map['maxRetryDuration'] as String,
      minBackoffDuration: map['minBackoffDuration'] == null
          ? null
          : map['minBackoffDuration'] as String,
      retryCount: map['retryCount'] == null ? null : map['retryCount'] as int,
    );
  }
}
