/// The provisioning model.
enum InstancePolicyProvisioningModel {
  provisioningModelUnspecified("PROVISIONING_MODEL_UNSPECIFIED"),
  standard("STANDARD"),
  spot("SPOT"),
  preemptible("PREEMPTIBLE");

  const InstancePolicyProvisioningModel(this.value);
  final String value;

  static InstancePolicyProvisioningModel fromValue(String value) {
    for (final item in InstancePolicyProvisioningModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePolicyProvisioningModel value: $value');
  }
}
