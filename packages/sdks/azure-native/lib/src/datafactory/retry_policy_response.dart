// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution policy for an activity.
class RetryPolicyResponse {
  /// Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? count;
  /// Interval between retries in seconds. Default is 30.
  final pulumi.Input<int?>? intervalInSeconds;

  /// Creates a new [RetryPolicyResponse].
  /// [count] Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [intervalInSeconds] Interval between retries in seconds. Default is 30.
  const RetryPolicyResponse({
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
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
