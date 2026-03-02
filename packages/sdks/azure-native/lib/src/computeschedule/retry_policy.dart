// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The retry policy for the user request
class RetryPolicy {
  /// Retry count for user request
  final pulumi.Input<int>? retryCount;
  /// Retry window in minutes for user request
  final pulumi.Input<int>? retryWindowInMinutes;

  /// Creates a new [RetryPolicy].
  /// [retryCount] Retry count for user request
  /// [retryWindowInMinutes] Retry window in minutes for user request
  RetryPolicy({
    this.retryCount,
    this.retryWindowInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retryCount': ?retryCount,
      'retryWindowInMinutes': ?retryWindowInMinutes,
    };
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      retryCount: map['retryCount'] == null ? null : (map['retryCount']! as int).input(),
      retryWindowInMinutes: map['retryWindowInMinutes'] == null ? null : (map['retryWindowInMinutes']! as int).input(),
    );
  }
}

