/// The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
enum LinuxOsState {
  nonDeprovisioned("NonDeprovisioned"),
  deprovisionRequested("DeprovisionRequested"),
  deprovisionApplied("DeprovisionApplied");

  const LinuxOsState(this.value);
  final String value;

  static LinuxOsState fromValue(String value) {
    for (final item in LinuxOsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxOsState value: $value');
  }
}

