// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigResponse2 {
  /// Enable Managed Collection.
  final bool enabled;

  ManagedPrometheusConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ManagedPrometheusConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
