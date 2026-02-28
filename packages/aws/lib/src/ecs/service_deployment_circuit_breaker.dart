// ignore_for_file: unused_element, unnecessary_cast

class ServiceDeploymentCircuitBreaker {
  /// Whether to enable the deployment circuit breaker logic for the service.
  final bool enable;

  /// Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final bool rollback;

  /// Creates a new [ServiceDeploymentCircuitBreaker].
  /// [enable] Whether to enable the deployment circuit breaker logic for the service.
  /// [rollback] Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  ServiceDeploymentCircuitBreaker({
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['rollback'] = rollback;
    return map;
  }

  factory ServiceDeploymentCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentCircuitBreaker(
      enable: map['enable'] as bool,
      rollback: map['rollback'] as bool,
    );
  }
}
