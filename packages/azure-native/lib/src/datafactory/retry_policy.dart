// ignore_for_file: unused_element, unnecessary_cast


/// Execution policy for an activity.
class RetryPolicy {
  /// Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic count;
  /// Interval between retries in seconds. Default is 30.
  final int? intervalInSeconds;

  /// Creates a new [RetryPolicy].
  /// [count] Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [intervalInSeconds] Interval between retries in seconds. Default is 30.
  RetryPolicy({
    this.count,
    this.intervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'intervalInSeconds': ?intervalInSeconds,
    };
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      count: map['count'] == null ? null : map['count'],
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
    );
  }
}

