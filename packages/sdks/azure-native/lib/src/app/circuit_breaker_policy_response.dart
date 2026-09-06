// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that defines circuit breaker conditions
class CircuitBreakerPolicyResponse {
  /// Number of consecutive errors before the circuit breaker opens
  final pulumi.Input<int?>? consecutiveErrors;
  /// The time interval, in seconds, between endpoint checks. This can result in opening the circuit breaker if the check fails as well as closing the circuit breaker if the check succeeds. Defaults to 10s.
  final pulumi.Input<int?>? intervalInSeconds;
  /// Maximum percentage of hosts that will be ejected after failure threshold has been met
  final pulumi.Input<int?>? maxEjectionPercent;

  /// Creates a new [CircuitBreakerPolicyResponse].
  /// [consecutiveErrors] Number of consecutive errors before the circuit breaker opens
  /// [intervalInSeconds] The time interval, in seconds, between endpoint checks. This can result in opening the circuit breaker if the check fails as well as closing the circuit breaker if the check succeeds. Defaults to 10s.
  /// [maxEjectionPercent] Maximum percentage of hosts that will be ejected after failure threshold has been met
  const CircuitBreakerPolicyResponse({
    this.consecutiveErrors,
    this.intervalInSeconds,
    this.maxEjectionPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consecutiveErrors': ?consecutiveErrors,
      'intervalInSeconds': ?intervalInSeconds,
      'maxEjectionPercent': ?maxEjectionPercent,
    };
  }

  factory CircuitBreakerPolicyResponse.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerPolicyResponse(
      consecutiveErrors: (() { final guardedValue = map['consecutiveErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxEjectionPercent: (() { final guardedValue = map['maxEjectionPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
