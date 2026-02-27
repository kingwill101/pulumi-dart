// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigResponseContainerV1beta1 {
  /// Enable Managed Collection.
  final bool enabled;

  ManagedPrometheusConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ManagedPrometheusConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ManagedPrometheusConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
