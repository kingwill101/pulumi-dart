// ignore_for_file: unused_element, unnecessary_cast

class QueueRetryConfig {
  /// Number of attempts per task.
  /// Cloud Tasks will attempt the task maxAttempts times (that is, if
  /// the first attempt fails, then there will be maxAttempts - 1
  /// retries). Must be >= -1.
  /// If unspecified when the queue is created, Cloud Tasks will pick
  /// the default.
  /// -1 indicates unlimited attempts.
  final int? maxAttempts;

  /// A task will be scheduled for retry between minBackoff and
  /// maxBackoff duration after it fails, if the queue's RetryConfig
  /// specifies that the task should be retried.
  final String? maxBackoff;

  /// The time between retries will double maxDoublings times.
  /// A task's retry interval starts at minBackoff, then doubles maxDoublings times,
  /// then increases linearly, and finally retries retries at intervals of maxBackoff
  /// up to maxAttempts times.
  final int? maxDoublings;

  /// If positive, maxRetryDuration specifies the time limit for
  /// retrying a failed task, measured from when the task was first
  /// attempted. Once maxRetryDuration time has passed and the task has
  /// been attempted maxAttempts times, no further attempts will be
  /// made and the task will be deleted.
  /// If zero, then the task age is unlimited.
  final String? maxRetryDuration;

  /// A task will be scheduled for retry between minBackoff and
  /// maxBackoff duration after it fails, if the queue's RetryConfig
  /// specifies that the task should be retried.
  final String? minBackoff;

  QueueRetryConfig({
    this.maxAttempts,
    this.maxBackoff,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoff,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxAttemptsValue = maxAttempts;
    if (maxAttemptsValue != null) {
      map['maxAttempts'] = maxAttemptsValue;
    }
    final maxBackoffValue = maxBackoff;
    if (maxBackoffValue != null) {
      map['maxBackoff'] = maxBackoffValue;
    }
    final maxDoublingsValue = maxDoublings;
    if (maxDoublingsValue != null) {
      map['maxDoublings'] = maxDoublingsValue;
    }
    final maxRetryDurationValue = maxRetryDuration;
    if (maxRetryDurationValue != null) {
      map['maxRetryDuration'] = maxRetryDurationValue;
    }
    final minBackoffValue = minBackoff;
    if (minBackoffValue != null) {
      map['minBackoff'] = minBackoffValue;
    }
    return map;
  }

  factory QueueRetryConfig.fromMap(Map<String, dynamic> map) {
    return QueueRetryConfig(
      maxAttempts:
          map['maxAttempts'] == null ? null : map['maxAttempts'] as int,
      maxBackoff:
          map['maxBackoff'] == null ? null : map['maxBackoff'] as String,
      maxDoublings:
          map['maxDoublings'] == null ? null : map['maxDoublings'] as int,
      maxRetryDuration: map['maxRetryDuration'] == null
          ? null
          : map['maxRetryDuration'] as String,
      minBackoff:
          map['minBackoff'] == null ? null : map['minBackoff'] as String,
    );
  }
}
