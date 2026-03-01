// ignore_for_file: unused_element, unnecessary_cast


/// Policy that defines circuit breaker conditions
class CircuitBreakerPolicy {
  /// Number of consecutive errors before the circuit breaker opens
  final int? consecutiveErrors;
  /// The time interval, in seconds, between endpoint checks. This can result in opening the circuit breaker if the check fails as well as closing the circuit breaker if the check succeeds. Defaults to 10s.
  final int? intervalInSeconds;
  /// Maximum percentage of hosts that will be ejected after failure threshold has been met
  final int? maxEjectionPercent;

  /// Creates a new [CircuitBreakerPolicy].
  /// [consecutiveErrors] Number of consecutive errors before the circuit breaker opens
  /// [intervalInSeconds] The time interval, in seconds, between endpoint checks. This can result in opening the circuit breaker if the check fails as well as closing the circuit breaker if the check succeeds. Defaults to 10s.
  /// [maxEjectionPercent] Maximum percentage of hosts that will be ejected after failure threshold has been met
  CircuitBreakerPolicy({
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
      consecutiveErrors: map['consecutiveErrors'] == null ? null : map['consecutiveErrors'] as int,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      maxEjectionPercent: map['maxEjectionPercent'] == null ? null : map['maxEjectionPercent'] as int,
    );
  }
}

