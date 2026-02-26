// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentConfigurationDeploymentCircuitBreaker {
  /// Whether circuit breaker is enabled
  final bool enable;

  /// Whether to rollback on failure
  final bool rollback;

  GetServiceDeploymentConfigurationDeploymentCircuitBreaker({
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['rollback'] = rollback;
    return map;
  }

  factory GetServiceDeploymentConfigurationDeploymentCircuitBreaker.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationDeploymentCircuitBreaker(
      enable: map['enable'] as bool,
      rollback: map['rollback'] as bool,
    );
  }
}
