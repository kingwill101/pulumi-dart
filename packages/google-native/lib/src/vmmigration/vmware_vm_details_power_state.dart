/// The power state of the VM at the moment list was taken.
enum VmwareVmDetailsPowerState {
  powerStateUnspecified("POWER_STATE_UNSPECIFIED"),
  on("ON"),
  off("OFF"),
  suspended("SUSPENDED");

  const VmwareVmDetailsPowerState(this.value);
  final String value;

  static VmwareVmDetailsPowerState fromValue(String value) {
    for (final item in VmwareVmDetailsPowerState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmwareVmDetailsPowerState value: $value');
  }
}
