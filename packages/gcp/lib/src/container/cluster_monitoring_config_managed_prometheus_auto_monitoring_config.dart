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
    return <String, dynamic>{
      'scope': scope,
    };
  }

  factory ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig(
      scope: map['scope'] as String,
    );
  }
}

