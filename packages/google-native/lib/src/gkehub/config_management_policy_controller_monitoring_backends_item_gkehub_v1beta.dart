enum ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1beta {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1beta(
    this.value,
  );
  final String value;

  static ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1beta
  fromValue(String value) {
    for (final item
        in ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1beta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1beta value: $value',
    );
  }
}
