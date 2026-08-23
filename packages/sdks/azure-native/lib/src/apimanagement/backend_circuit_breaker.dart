// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'circuit_breaker_rule.dart';

/// The configuration of the backend circuit breaker
class BackendCircuitBreaker {
  /// The rules for tripping the backend.
  final pulumi.Input<List<CircuitBreakerRule>>? rules;

  /// Creates a new [BackendCircuitBreaker].
  /// [rules] The rules for tripping the backend.
  const BackendCircuitBreaker({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CircuitBreakerRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CircuitBreakerRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return BackendCircuitBreaker(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CircuitBreakerRule>(guardedValue, (value) => CircuitBreakerRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
