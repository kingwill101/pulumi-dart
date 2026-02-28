/// Minimal action to be taken on an instance. Use this option to minimize disruption as much as possible or to apply a more disruptive action than is necessary. - To limit disruption as much as possible, set the minimal action to REFRESH. If your update requires a more disruptive action, Compute Engine performs the necessary action to execute the update. - To apply a more disruptive action than is strictly necessary, set the minimal action to RESTART or REPLACE. For example, Compute Engine does not need to restart a VM to change its metadata. But if your application reads instance metadata only when a VM is restarted, you can set the minimal action to RESTART in order to pick up metadata changes.
enum InstanceGroupManagerUpdatePolicyMinimalActionComputeV1 {
  none("NONE"),
  refresh("REFRESH"),
  replace("REPLACE"),
  restart("RESTART");

  const InstanceGroupManagerUpdatePolicyMinimalActionComputeV1(this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyMinimalActionComputeV1 fromValue(
      String value) {
    for (final item
        in InstanceGroupManagerUpdatePolicyMinimalActionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerUpdatePolicyMinimalActionComputeV1 value: $value');
  }
}
