// ignore_for_file: unused_element, unnecessary_cast

/// Retry config. These settings determine how a failed task attempt is retried.
class RetryConfigResponseCloudtasksV2beta2 {
  /// The maximum number of attempts for a task. Cloud Tasks will attempt the task `max_attempts` times (that is, if the first attempt fails, then there will be `max_attempts - 1` retries). Must be > 0.
  final int maxAttempts;

  /// A task will be scheduled for retry between min_backoff and max_backoff duration after it fails, if the queue's RetryConfig specifies that the task should be retried. If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. `max_backoff` will be truncated to the nearest second. This field has the same meaning as [max_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  final String maxBackoff;

  /// The time between retries will double `max_doublings` times. A task's retry interval starts at min_backoff, then doubles `max_doublings` times, then increases linearly, and finally retries at intervals of max_backoff up to max_attempts times. For example, if min_backoff is 10s, max_backoff is 300s, and `max_doublings` is 3, then the a task will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the task will retry at intervals of max_backoff until the task has been attempted max_attempts times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. This field has the same meaning as [max_doublings in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  final int maxDoublings;

  /// If positive, `max_retry_duration` specifies the time limit for retrying a failed task, measured from when the task was first attempted. Once `max_retry_duration` time has passed *and* the task has been attempted max_attempts times, no further attempts will be made and the task will be deleted. If zero, then the task age is unlimited. If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. `max_retry_duration` will be truncated to the nearest second. This field has the same meaning as [task_age_limit in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  final String maxRetryDuration;

  /// A task will be scheduled for retry between min_backoff and max_backoff duration after it fails, if the queue's RetryConfig specifies that the task should be retried. If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. `min_backoff` will be truncated to the nearest second. This field has the same meaning as [min_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  final String minBackoff;

  /// If true, then the number of attempts is unlimited.
  final bool unlimitedAttempts;

  /// Creates a new [RetryConfigResponseCloudtasksV2beta2].
  /// [maxAttempts] The maximum number of attempts for a task. Cloud Tasks will attempt the task `max_attempts` times (that is, if the first attempt fails, then there will be `max_attempts - 1` retries). Must be > 0.
  /// [maxBackoff] A task will be scheduled for retry between min_backoff and max_backoff duration after it fails, if the queue's RetryConfig specifies that the task should be retried. If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. `max_backoff` will be truncated to the nearest second. This field has the same meaning as [max_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  /// [maxDoublings] The time between retries will double `max_doublings` times. A task's retry interval starts at min_backoff, then doubles `max_doublings` times, then increases linearly, and finally retries at intervals of max_backoff up to max_attempts times. For example, if min_backoff is 10s, max_backoff is 300s, and `max_doublings` is 3, then the a task will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the task will retry at intervals of max_backoff until the task has been attempted max_attempts times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. This field has the same meaning as [max_doublings in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  /// [maxRetryDuration] If positive, `max_retry_duration` specifies the time limit for retrying a failed task, measured from when the task was first attempted. Once `max_retry_duration` time has passed *and* the task has been attempted max_attempts times, no further attempts will be made and the task will be deleted. If zero, then the task age is unlimited. If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. `max_retry_duration` will be truncated to the nearest second. This field has the same meaning as [task_age_limit in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  /// [minBackoff] A task will be scheduled for retry between min_backoff and max_backoff duration after it fails, if the queue's RetryConfig specifies that the task should be retried. If unspecified when the queue is created, Cloud Tasks will pick the default. This field is output only for pull queues. `min_backoff` will be truncated to the nearest second. This field has the same meaning as [min_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  /// [unlimitedAttempts] If true, then the number of attempts is unlimited.
  RetryConfigResponseCloudtasksV2beta2({
    required this.maxAttempts,
    required this.maxBackoff,
    required this.maxDoublings,
    required this.maxRetryDuration,
    required this.minBackoff,
    required this.unlimitedAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': maxAttempts,
      'maxBackoff': maxBackoff,
      'maxDoublings': maxDoublings,
      'maxRetryDuration': maxRetryDuration,
      'minBackoff': minBackoff,
      'unlimitedAttempts': unlimitedAttempts,
    };
  }

  factory RetryConfigResponseCloudtasksV2beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return RetryConfigResponseCloudtasksV2beta2(
      maxAttempts: map['maxAttempts'] as int,
      maxBackoff: map['maxBackoff'] as String,
      maxDoublings: map['maxDoublings'] as int,
      maxRetryDuration: map['maxRetryDuration'] as String,
      minBackoff: map['minBackoff'] as String,
      unlimitedAttempts: map['unlimitedAttempts'] as bool,
    );
  }
}
