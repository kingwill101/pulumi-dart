// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'circuit_breaker_rule_response.dart';

/// The configuration of the backend circuit breaker
class BackendCircuitBreakerResponse {
  /// The rules for tripping the backend.
  final pulumi.Input<List<CircuitBreakerRuleResponse>>? rules;

  /// Creates a new [BackendCircuitBreakerResponse].
  /// [rules] The rules for tripping the backend.
  BackendCircuitBreakerResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CircuitBreakerRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CircuitBreakerRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendCircuitBreakerResponse.fromMap(Map<String, dynamic> map) {
    return BackendCircuitBreakerResponse(
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<CircuitBreakerRuleResponse>(map['rules']!, (value) => CircuitBreakerRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

