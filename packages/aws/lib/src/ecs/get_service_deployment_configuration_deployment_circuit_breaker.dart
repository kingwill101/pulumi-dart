// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentConfigurationDeploymentCircuitBreaker {
  /// Whether circuit breaker is enabled
  final bool enable;

  /// Whether to rollback on failure
  final bool rollback;

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
      enable: map['enable'] as bool,
      rollback: map['rollback'] as bool,
    );
  }
}
