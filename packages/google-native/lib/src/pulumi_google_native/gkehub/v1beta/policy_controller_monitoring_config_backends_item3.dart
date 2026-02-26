enum PolicyControllerMonitoringConfigBackendsItem3 {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const PolicyControllerMonitoringConfigBackendsItem3(this.value);
  final String value;

  static PolicyControllerMonitoringConfigBackendsItem3 fromValue(String value) {
    for (final item in PolicyControllerMonitoringConfigBackendsItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyControllerMonitoringConfigBackendsItem3 value: $value');
  }
}
