// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterMonitoringConfigManagedPrometheusConfig {
  /// Enable Managed Collection.
  final bool? enabled;

  AttachedClusterMonitoringConfigManagedPrometheusConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory AttachedClusterMonitoringConfigManagedPrometheusConfig.fromMap(
      Map<String, dynamic> map) {
    return AttachedClusterMonitoringConfigManagedPrometheusConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
