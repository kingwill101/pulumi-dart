enum PolicyControllerMonitoringConfigBackendsItem2 {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const PolicyControllerMonitoringConfigBackendsItem2(this.value);
  final String value;

  static PolicyControllerMonitoringConfigBackendsItem2 fromValue(String value) {
    for (final item in PolicyControllerMonitoringConfigBackendsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyControllerMonitoringConfigBackendsItem2 value: $value');
  }
}
