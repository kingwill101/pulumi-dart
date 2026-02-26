/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModel2 {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModel2(this.value);
  final String value;

  static SchedulingProvisioningModel2 fromValue(String value) {
    for (final item in SchedulingProvisioningModel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModel2 value: $value');
  }
}
