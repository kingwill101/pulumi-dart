// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'circuit_breaker_failure_condition_response.dart';

/// Rule configuration to trip the backend.
class CircuitBreakerRuleResponse {
  /// flag to accept Retry-After header from the backend.
  final pulumi.Input<bool?>? acceptRetryAfter;
  /// The conditions for tripping the circuit breaker.
  final pulumi.Input<CircuitBreakerFailureConditionResponse?>? failureCondition;
  /// The rule name.
  final pulumi.Input<String?>? name;
  /// The duration for which the circuit will be tripped.
  final pulumi.Input<String?>? tripDuration;

  /// Creates a new [CircuitBreakerRuleResponse].
  /// [acceptRetryAfter] flag to accept Retry-After header from the backend.
  /// [failureCondition] The conditions for tripping the circuit breaker.
  /// [name] The rule name.
  /// [tripDuration] The duration for which the circuit will be tripped.
  const CircuitBreakerRuleResponse({
    this.acceptRetryAfter,
    this.failureCondition,
    this.name,
    this.tripDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptRetryAfter': ?acceptRetryAfter,
      'failureCondition': ?pulumi.Input.mapOptionalInputValue<CircuitBreakerFailureConditionResponse, Map<String, dynamic>>(failureCondition, (value) => value.toMap()),
      'name': ?name,
      'tripDuration': ?tripDuration,
    };
  }

  factory CircuitBreakerRuleResponse.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerRuleResponse(
      acceptRetryAfter: (() { final guardedValue = map['acceptRetryAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureCondition: (() { final guardedValue = map['failureCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CircuitBreakerFailureConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tripDuration: (() { final guardedValue = map['tripDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
