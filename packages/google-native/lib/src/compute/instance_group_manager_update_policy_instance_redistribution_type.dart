/// The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
enum InstanceGroupManagerUpdatePolicyInstanceRedistributionType {
  none("NONE"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyInstanceRedistributionType(this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyInstanceRedistributionType fromValue(
      String value) {
    for (final item
        in InstanceGroupManagerUpdatePolicyInstanceRedistributionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerUpdatePolicyInstanceRedistributionType value: $value');
  }
}
