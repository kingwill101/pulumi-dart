enum ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha {
  monitoringBackendUnspecified("MONITORING_BACKEND_UNSPECIFIED"),
  prometheus("PROMETHEUS"),
  cloudMonitoring("CLOUD_MONITORING");

  const ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha(
    this.value,
  );
  final String value;

  static ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha
  fromValue(String value) {
    for (final item
        in ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha value: $value',
    );
  }
}
