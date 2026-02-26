/// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
enum InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3 {
  no("NO"),
  yes("YES");

  const InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3(
      this.value);
  final String value;

  static InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3
      fromValue(String value) {
    for (final item
        in InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3 value: $value');
  }
}
