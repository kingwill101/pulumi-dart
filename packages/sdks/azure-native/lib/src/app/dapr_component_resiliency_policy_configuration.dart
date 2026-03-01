// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_component_resiliency_policy_circuit_breaker_policy_configuration.dart';
import 'dapr_component_resiliency_policy_http_retry_policy_configuration.dart';
import 'dapr_component_resiliency_policy_timeout_policy_configuration.dart';

/// Dapr Component Resiliency Policy Configuration.
class DaprComponentResiliencyPolicyConfiguration {
  /// The optional circuit breaker policy configuration
  final DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration? circuitBreakerPolicy;
  /// The optional HTTP retry policy configuration
  final DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration? httpRetryPolicy;
  /// The optional timeout policy configuration
  final DaprComponentResiliencyPolicyTimeoutPolicyConfiguration? timeoutPolicy;

  /// Creates a new [DaprComponentResiliencyPolicyConfiguration].
  /// [circuitBreakerPolicy] The optional circuit breaker policy configuration
  /// [httpRetryPolicy] The optional HTTP retry policy configuration
  /// [timeoutPolicy] The optional timeout policy configuration
  DaprComponentResiliencyPolicyConfiguration({
    this.circuitBreakerPolicy,
    this.httpRetryPolicy,
    this.timeoutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitBreakerPolicy': ?circuitBreakerPolicy == null ? null : circuitBreakerPolicy!.toMap(),
      'httpRetryPolicy': ?httpRetryPolicy == null ? null : httpRetryPolicy!.toMap(),
      'timeoutPolicy': ?timeoutPolicy == null ? null : timeoutPolicy!.toMap(),
    };
  }

  factory DaprComponentResiliencyPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyConfiguration(
      circuitBreakerPolicy: map['circuitBreakerPolicy'] == null ? null : DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration.fromMap((map['circuitBreakerPolicy'] as Map).cast<String, dynamic>()),
      httpRetryPolicy: map['httpRetryPolicy'] == null ? null : DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration.fromMap((map['httpRetryPolicy'] as Map).cast<String, dynamic>()),
      timeoutPolicy: map['timeoutPolicy'] == null ? null : DaprComponentResiliencyPolicyTimeoutPolicyConfiguration.fromMap((map['timeoutPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

