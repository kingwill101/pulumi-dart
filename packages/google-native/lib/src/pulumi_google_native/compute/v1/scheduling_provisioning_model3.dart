/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModel3 {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModel3(this.value);
  final String value;

  static SchedulingProvisioningModel3 fromValue(String value) {
    for (final item in SchedulingProvisioningModel3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModel3 value: $value');
  }
}
