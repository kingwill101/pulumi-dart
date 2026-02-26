/// The action that a MIG performs on a failed or an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are - REPAIR (default): MIG automatically repairs a failed or an unhealthy VM by recreating it. For more information, see About repairing VMs in a MIG. - DO_NOTHING: MIG does not repair a failed or an unhealthy VM.
enum InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure {
  delete("DELETE"),
  doNothing("DO_NOTHING"),
  repair("REPAIR");

  const InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure(
      this.value);
  final String value;

  static InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure
      fromValue(String value) {
    for (final item
        in InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure value: $value');
  }
}
