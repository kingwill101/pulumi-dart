enum ConfigManagementPolicyControllerMonitoringBackendsItem {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItem(this.value);
  final String value;

  static ConfigManagementPolicyControllerMonitoringBackendsItem fromValue(
    String value,
  ) {
    for (final item
        in ConfigManagementPolicyControllerMonitoringBackendsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ConfigManagementPolicyControllerMonitoringBackendsItem value: $value',
    );
  }
}
