// ignore_for_file: unused_element, unnecessary_cast

/// A policy that specifies how Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.
class RetryPolicyResponse {
  /// Optional. The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  final String maximumBackoff;

  /// Optional. The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  final String minimumBackoff;

  RetryPolicyResponse({
    required this.maximumBackoff,
    required this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maximumBackoff'] = maximumBackoff;
    map['minimumBackoff'] = minimumBackoff;
    return map;
  }

  factory RetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetryPolicyResponse(
      maximumBackoff: map['maximumBackoff'] as String,
      minimumBackoff: map['minimumBackoff'] as String,
    );
  }
}
