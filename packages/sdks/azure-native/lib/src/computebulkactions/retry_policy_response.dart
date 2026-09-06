// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The retry policy for the user request
class RetryPolicyResponse {
  /// Retry count for user request
  final pulumi.Input<int?>? retryCount;
  /// Retry window in minutes for user request
  final pulumi.Input<int?>? retryWindowInMinutes;

  /// Creates a new [RetryPolicyResponse].
  /// [retryCount] Retry count for user request
  /// [retryWindowInMinutes] Retry window in minutes for user request
  const RetryPolicyResponse({
    this.retryCount,
    this.retryWindowInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retryCount': ?retryCount,
      'retryWindowInMinutes': ?retryWindowInMinutes,
    };
  }

  factory RetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetryPolicyResponse(
      retryCount: (() { final guardedValue = map['retryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      retryWindowInMinutes: (() { final guardedValue = map['retryWindowInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
