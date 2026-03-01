// ignore_for_file: unused_element, unnecessary_cast


/// Dapr Component Resiliency Policy Circuit Breaker Policy Configuration.
class DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration {
  /// The number of consecutive errors before the circuit is opened.
  final int? consecutiveErrors;
  /// The optional interval in seconds after which the error count resets to 0. An interval of 0 will never reset. If not specified, the timeoutInSeconds value will be used.
  final int? intervalInSeconds;
  /// The interval in seconds until a retry attempt is made after the circuit is opened.
  final int? timeoutInSeconds;

  /// Creates a new [DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration].
  /// [consecutiveErrors] The number of consecutive errors before the circuit is opened.
  /// [intervalInSeconds] The optional interval in seconds after which the error count resets to 0. An interval of 0 will never reset. If not specified, the timeoutInSeconds value will be used.
  /// [timeoutInSeconds] The interval in seconds until a retry attempt is made after the circuit is opened.
  DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration({
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

  factory DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyCircuitBreakerPolicyConfiguration(
      consecutiveErrors: map['consecutiveErrors'] == null ? null : map['consecutiveErrors'] as int,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
    );
  }
}

