// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr Component Resiliency Policy Circuit Breaker Policy Configuration.
class DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse {
  /// The number of consecutive errors before the circuit is opened.
  final pulumi.Input<int>? consecutiveErrors;
  /// The optional interval in seconds after which the error count resets to 0. An interval of 0 will never reset. If not specified, the timeoutInSeconds value will be used.
  final pulumi.Input<int>? intervalInSeconds;
  /// The interval in seconds until a retry attempt is made after the circuit is opened.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse].
  /// [consecutiveErrors] The number of consecutive errors before the circuit is opened.
  /// [intervalInSeconds] The optional interval in seconds after which the error count resets to 0. An interval of 0 will never reset. If not specified, the timeoutInSeconds value will be used.
  /// [timeoutInSeconds] The interval in seconds until a retry attempt is made after the circuit is opened.
  const DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse({
    this.consecutiveErrors,
    this.intervalInSeconds,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consecutiveErrors': ?consecutiveErrors,
      'intervalInSeconds': ?intervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationResponse(
      consecutiveErrors: (() { final guardedValue = map['consecutiveErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
