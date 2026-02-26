// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentConfigurationAlarm {
  /// List of CloudWatch alarm names
  final List<String> alarmNames;

  /// Whether circuit breaker is enabled
  final bool enable;

  /// Whether to rollback on failure
  final bool rollback;

  GetServiceDeploymentConfigurationAlarm({
    required this.alarmNames,
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarmNames'] = alarmNames;
    map['enable'] = enable;
    map['rollback'] = rollback;
    return map;
  }

  factory GetServiceDeploymentConfigurationAlarm.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationAlarm(
      alarmNames: (map['alarmNames'] as List).cast<String>(),
      enable: map['enable'] as bool,
      rollback: map['rollback'] as bool,
    );
  }
}
