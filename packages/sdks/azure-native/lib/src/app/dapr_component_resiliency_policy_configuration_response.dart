// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_resiliency_policy_circuit_breaker_policy_configuration_response.dart';
import 'dapr_component_resiliency_policy_http_retry_policy_configuration_response.dart';
import 'dapr_component_resiliency_policy_timeout_policy_configuration_response.dart';

/// Dapr Component Resiliency Policy Configuration.
class DaprComponentResiliencyPolicyConfigurationResponse {
  /// The optional circuit breaker policy configuration
  final pulumi.Input<DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse?>? circuitBreakerPolicy;
  /// The optional HTTP retry policy configuration
  final pulumi.Input<DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse?>? httpRetryPolicy;
  /// The optional timeout policy configuration
  final pulumi.Input<DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse?>? timeoutPolicy;

  /// Creates a new [DaprComponentResiliencyPolicyConfigurationResponse].
  /// [circuitBreakerPolicy] The optional circuit breaker policy configuration
  /// [httpRetryPolicy] The optional HTTP retry policy configuration
  /// [timeoutPolicy] The optional timeout policy configuration
  const DaprComponentResiliencyPolicyConfigurationResponse({
    this.circuitBreakerPolicy,
    this.httpRetryPolicy,
    this.timeoutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitBreakerPolicy': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse, Map<String, dynamic>>(circuitBreakerPolicy, (value) => value.toMap()),
      'httpRetryPolicy': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse, Map<String, dynamic>>(httpRetryPolicy, (value) => value.toMap()),
      'timeoutPolicy': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse, Map<String, dynamic>>(timeoutPolicy, (value) => value.toMap()),
    };
  }

  factory DaprComponentResiliencyPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyConfigurationResponse(
      circuitBreakerPolicy: (() { final guardedValue = map['circuitBreakerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpRetryPolicy: (() { final guardedValue = map['httpRetryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutPolicy: (() { final guardedValue = map['timeoutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
