// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfig2 {
  /// Enable Managed Collection.
  final bool? enabled;

  ManagedPrometheusConfig2({
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

  factory ManagedPrometheusConfig2.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
