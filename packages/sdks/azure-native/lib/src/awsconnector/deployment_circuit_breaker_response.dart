// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeploymentCircuitBreaker
class DeploymentCircuitBreakerResponse {
  /// Determines whether to use the deployment circuit breaker logic for the service.
  final bool? enable;
  /// Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is on, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final bool? rollback;

  /// Creates a new [DeploymentCircuitBreakerResponse].
  /// [enable] Determines whether to use the deployment circuit breaker logic for the service.
  /// [rollback] Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is on, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  DeploymentCircuitBreakerResponse({
    this.enable,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'rollback': ?rollback,
    };
  }

  factory DeploymentCircuitBreakerResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentCircuitBreakerResponse(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      rollback: map['rollback'] == null ? null : map['rollback'] as bool,
    );
  }
}

