enum ConfigManagementPolicyControllerMonitoringBackendsItem3 {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItem3(this.value);
  final String value;

  static ConfigManagementPolicyControllerMonitoringBackendsItem3 fromValue(
      String value) {
    for (final item
        in ConfigManagementPolicyControllerMonitoringBackendsItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ConfigManagementPolicyControllerMonitoringBackendsItem3 value: $value');
  }
}
