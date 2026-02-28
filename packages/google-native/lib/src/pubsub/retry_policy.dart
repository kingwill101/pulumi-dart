// ignore_for_file: unused_element, unnecessary_cast

/// A policy that specifies how Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.
class RetryPolicy {
  /// Optional. The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  final String? maximumBackoff;

  /// Optional. The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  final String? minimumBackoff;

  /// Creates a new [RetryPolicy].
  /// [maximumBackoff] Optional. The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// [minimumBackoff] Optional. The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  RetryPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumBackoffValue = maximumBackoff;
    if (maximumBackoffValue != null) {
      map['maximumBackoff'] = maximumBackoffValue;
    }
    final minimumBackoffValue = minimumBackoff;
    if (minimumBackoffValue != null) {
      map['minimumBackoff'] = minimumBackoffValue;
    }
    return map;
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      maximumBackoff: map['maximumBackoff'] == null
          ? null
          : map['maximumBackoff'] as String,
      minimumBackoff: map['minimumBackoff'] == null
          ? null
          : map['minimumBackoff'] as String,
    );
  }
}
