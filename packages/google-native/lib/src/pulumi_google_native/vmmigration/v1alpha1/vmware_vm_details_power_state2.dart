/// The power state of the VM at the moment list was taken.
enum VmwareVmDetailsPowerState2 {
  powerStateUnspecified("POWER_STATE_UNSPECIFIED"),
  on("ON"),
  off("OFF"),
  suspended("SUSPENDED");

  const VmwareVmDetailsPowerState2(this.value);
  final String value;

  static VmwareVmDetailsPowerState2 fromValue(String value) {
    for (final item in VmwareVmDetailsPowerState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmwareVmDetailsPowerState2 value: $value');
  }
}
