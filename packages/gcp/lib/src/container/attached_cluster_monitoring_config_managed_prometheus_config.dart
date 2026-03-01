// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterMonitoringConfigManagedPrometheusConfig {
  /// Enable Managed Collection.
  final bool? enabled;

  /// Creates a new [AttachedClusterMonitoringConfigManagedPrometheusConfig].
  /// [enabled] Enable Managed Collection.
  AttachedClusterMonitoringConfigManagedPrometheusConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory AttachedClusterMonitoringConfigManagedPrometheusConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttachedClusterMonitoringConfigManagedPrometheusConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
