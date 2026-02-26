enum ConfigManagementPolicyControllerMonitoringBackendsItem2 {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItem2(this.value);
  final String value;

  static ConfigManagementPolicyControllerMonitoringBackendsItem2 fromValue(
      String value) {
    for (final item
        in ConfigManagementPolicyControllerMonitoringBackendsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ConfigManagementPolicyControllerMonitoringBackendsItem2 value: $value');
  }
}
