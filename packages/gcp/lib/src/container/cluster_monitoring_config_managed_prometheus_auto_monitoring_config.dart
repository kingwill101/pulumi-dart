// ignore_for_file: unused_element, unnecessary_cast

class ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig {
  /// Whether or not to enable GKE Auto-Monitoring. Supported values include: `ALL`, `NONE`.
  final String scope;

  /// Creates a new [ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig].
  /// [scope] Whether or not to enable GKE Auto-Monitoring. Supported values include: `ALL`, `NONE`.
  ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    return map;
  }

  factory ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig(
      scope: map['scope'] as String,
    );
  }
}
