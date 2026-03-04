// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentConfigurationDeploymentCircuitBreaker {
  /// Whether circuit breaker is enabled
  final pulumi.Input<bool> enable;

  /// Whether to rollback on failure
  final pulumi.Input<bool> rollback;

  /// Creates a new [GetServiceDeploymentConfigurationDeploymentCircuitBreaker].
  /// [enable] Whether circuit breaker is enabled
  /// [rollback] Whether to rollback on failure
  GetServiceDeploymentConfigurationDeploymentCircuitBreaker({
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': enable, 'rollback': rollback};
  }

  factory GetServiceDeploymentConfigurationDeploymentCircuitBreaker.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceDeploymentConfigurationDeploymentCircuitBreaker(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      rollback: pulumi.Input.fromValue(map['rollback'] as bool),
    );
  }
}
