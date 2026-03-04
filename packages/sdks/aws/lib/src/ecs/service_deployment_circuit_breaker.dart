// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDeploymentCircuitBreaker {
  /// Whether to enable the deployment circuit breaker logic for the service.
  final pulumi.Input<bool> enable;

  /// Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final pulumi.Input<bool> rollback;

  /// Creates a new [ServiceDeploymentCircuitBreaker].
  /// [enable] Whether to enable the deployment circuit breaker logic for the service.
  /// [rollback] Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  ServiceDeploymentCircuitBreaker({
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': enable, 'rollback': rollback};
  }

  factory ServiceDeploymentCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentCircuitBreaker(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      rollback: pulumi.Input.fromValue(map['rollback'] as bool),
    );
  }
}
