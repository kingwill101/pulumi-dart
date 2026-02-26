// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigResponse {
  /// Enable Managed Collection.
  final bool enabled;

  ManagedPrometheusConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ManagedPrometheusConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
