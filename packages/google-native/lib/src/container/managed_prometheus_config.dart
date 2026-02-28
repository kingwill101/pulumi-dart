// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfig {
  /// Enable Managed Collection.
  final bool? enabled;

  /// Creates a new [ManagedPrometheusConfig].
  /// [enabled] Enable Managed Collection.
  ManagedPrometheusConfig({
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

  factory ManagedPrometheusConfig.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
