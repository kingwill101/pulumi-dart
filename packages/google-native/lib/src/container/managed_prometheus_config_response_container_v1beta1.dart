// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigResponseContainerV1beta1 {
  /// Enable Managed Collection.
  final bool enabled;

  /// Creates a new [ManagedPrometheusConfigResponseContainerV1beta1].
  /// [enabled] Enable Managed Collection.
  ManagedPrometheusConfigResponseContainerV1beta1({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ManagedPrometheusConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedPrometheusConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
