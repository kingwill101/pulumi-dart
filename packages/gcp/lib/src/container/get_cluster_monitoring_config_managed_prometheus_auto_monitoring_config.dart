// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig {
  /// The scope of auto-monitoring.
  final String scope;

  /// Creates a new [GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig].
  /// [scope] The scope of auto-monitoring.
  GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scope': scope};
  }

  factory GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig(
      scope: map['scope'] as String,
    );
  }
}
