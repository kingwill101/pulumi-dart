// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution policy for an activity.
class RetryPolicyResponse {
  /// Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? count;
  /// Interval between retries in seconds. Default is 30.
  final pulumi.Input<int>? intervalInSeconds;

  /// Creates a new [RetryPolicyResponse].
  /// [count] Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [intervalInSeconds] Interval between retries in seconds. Default is 30.
  RetryPolicyResponse({
    this.count,
    this.intervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'intervalInSeconds': ?intervalInSeconds,
    };
  }

  factory RetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetryPolicyResponse(
      count: map['count'] == null ? null : (map['count']).input(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds'] as int).input(),
    );
  }
}

