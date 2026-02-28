// ignore_for_file: unused_element, unnecessary_cast

class SubscriptionRetryPolicy {
  /// The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? maximumBackoff;

  /// The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? minimumBackoff;

  /// Creates a new [SubscriptionRetryPolicy].
  /// [maximumBackoff] The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// [minimumBackoff] The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  SubscriptionRetryPolicy({
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

  factory SubscriptionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return SubscriptionRetryPolicy(
      maximumBackoff: map['maximumBackoff'] == null
          ? null
          : map['maximumBackoff'] as String,
      minimumBackoff: map['minimumBackoff'] == null
          ? null
          : map['minimumBackoff'] as String,
    );
  }
}
