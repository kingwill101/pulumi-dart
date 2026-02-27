// ignore_for_file: unused_element, unnecessary_cast

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigContainerV1beta1 {
  /// Enable Managed Collection.
  final bool? enabled;

  ManagedPrometheusConfigContainerV1beta1({
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

  factory ManagedPrometheusConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ManagedPrometheusConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
