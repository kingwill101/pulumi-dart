/// The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
enum InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1 {
  none("NONE"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1(
      this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1
      fromValue(String value) {
    for (final item
        in InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1 value: $value');
  }
}
