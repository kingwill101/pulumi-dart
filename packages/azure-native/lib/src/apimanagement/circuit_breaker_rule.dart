// ignore_for_file: unused_element, unnecessary_cast

import 'circuit_breaker_failure_condition.dart';

/// Rule configuration to trip the backend.
class CircuitBreakerRule {
  /// flag to accept Retry-After header from the backend.
  final bool? acceptRetryAfter;
  /// The conditions for tripping the circuit breaker.
  final CircuitBreakerFailureCondition? failureCondition;
  /// The rule name.
  final String? name;
  /// The duration for which the circuit will be tripped.
  final String? tripDuration;

  /// Creates a new [CircuitBreakerRule].
  /// [acceptRetryAfter] flag to accept Retry-After header from the backend.
  /// [failureCondition] The conditions for tripping the circuit breaker.
  /// [name] The rule name.
  /// [tripDuration] The duration for which the circuit will be tripped.
  CircuitBreakerRule({
    this.acceptRetryAfter,
    this.failureCondition,
    this.name,
    this.tripDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptRetryAfter': ?acceptRetryAfter,
      'failureCondition': ?failureCondition == null ? null : failureCondition!.toMap(),
      'name': ?name,
      'tripDuration': ?tripDuration,
    };
  }

  factory CircuitBreakerRule.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerRule(
      acceptRetryAfter: map['acceptRetryAfter'] == null ? null : map['acceptRetryAfter'] as bool,
      failureCondition: map['failureCondition'] == null ? null : CircuitBreakerFailureCondition.fromMap((map['failureCondition'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      tripDuration: map['tripDuration'] == null ? null : map['tripDuration'] as String,
    );
  }
}

