// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigResponse {
  /// Enable Managed Collection.
  final bool enabled;

  /// Creates a new [ManagedPrometheusConfigResponse].
  /// [enabled] Enable Managed Collection.
  ManagedPrometheusConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ManagedPrometheusConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfigResponse(enabled: map['enabled'] as bool);
  }
}
