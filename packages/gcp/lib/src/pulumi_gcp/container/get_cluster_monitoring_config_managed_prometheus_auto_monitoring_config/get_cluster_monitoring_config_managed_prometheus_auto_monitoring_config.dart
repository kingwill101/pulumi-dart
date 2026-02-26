// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig {
  /// The scope of auto-monitoring.
  final String scope;

  GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    return map;
  }

  factory GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig(
      scope: map['scope'] as String,
    );
  }
}
