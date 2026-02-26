/// The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
enum InstanceGroupManagerUpdatePolicyType2 {
  opportunistic("OPPORTUNISTIC"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyType2(this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyType2 fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerUpdatePolicyType2 value: $value');
  }
}
