enum PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha(this.value);
  final String value;

  static PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha fromValue(
    String value,
  ) {
    for (final item
        in PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha value: $value',
    );
  }
}
