// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that defines circuit breaker conditions
class CircuitBreakerPolicy {
  /// Number of consecutive errors before the circuit breaker opens
  final pulumi.Input<int>? consecutiveErrors;
  /// The time interval, in seconds, between endpoint checks. This can result in opening the circuit breaker if the check fails as well as closing the circuit breaker if the check succeeds. Defaults to 10s.
  final pulumi.Input<int>? intervalInSeconds;
  /// Maximum percentage of hosts that will be ejected after failure threshold has been met
  final pulumi.Input<int>? maxEjectionPercent;

  /// Creates a new [CircuitBreakerPolicy].
  /// [consecutiveErrors] Number of consecutive errors before the circuit breaker opens
  /// [intervalInSeconds] The time interval, in seconds, between endpoint checks. This can result in opening the circuit breaker if the check fails as well as closing the circuit breaker if the check succeeds. Defaults to 10s.
  /// [maxEjectionPercent] Maximum percentage of hosts that will be ejected after failure threshold has been met
  const CircuitBreakerPolicy({
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

  factory CircuitBreakerPolicy.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerPolicy(
      consecutiveErrors: (() { final guardedValue = map['consecutiveErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxEjectionPercent: (() { final guardedValue = map['maxEjectionPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
