/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModelComputeBeta {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModelComputeBeta(this.value);
  final String value;

  static SchedulingProvisioningModelComputeBeta fromValue(String value) {
    for (final item in SchedulingProvisioningModelComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingProvisioningModelComputeBeta value: $value');
  }
}
