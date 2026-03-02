// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentCircuitBreaker
class DeploymentCircuitBreaker {
  /// Determines whether to use the deployment circuit breaker logic for the service.
  final pulumi.Input<bool>? enable;
  /// Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is on, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final pulumi.Input<bool>? rollback;

  /// Creates a new [DeploymentCircuitBreaker].
  /// [enable] Determines whether to use the deployment circuit breaker logic for the service.
  /// [rollback] Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is on, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  DeploymentCircuitBreaker({
    this.enable,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'rollback': ?rollback,
    };
  }

  factory DeploymentCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return DeploymentCircuitBreaker(
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      rollback: map['rollback'] == null ? null : (map['rollback']! as bool).input(),
    );
  }
}

