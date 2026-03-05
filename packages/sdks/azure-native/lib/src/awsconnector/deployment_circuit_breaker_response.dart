// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentCircuitBreaker
class DeploymentCircuitBreakerResponse {
  /// Determines whether to use the deployment circuit breaker logic for the service.
  final pulumi.Input<bool>? enable;
  /// Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is on, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final pulumi.Input<bool>? rollback;

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
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rollback: (() { final guardedValue = map['rollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

