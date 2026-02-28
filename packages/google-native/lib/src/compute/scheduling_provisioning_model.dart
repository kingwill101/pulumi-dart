/// Specifies the provisioning model of the instance.
enum SchedulingProvisioningModel {
  spot("SPOT"),
  standard("STANDARD");

  const SchedulingProvisioningModel(this.value);
  final String value;

  static SchedulingProvisioningModel fromValue(String value) {
    for (final item in SchedulingProvisioningModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingProvisioningModel value: $value');
  }
}
