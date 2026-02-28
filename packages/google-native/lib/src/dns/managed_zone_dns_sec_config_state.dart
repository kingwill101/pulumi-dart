/// Specifies whether DNSSEC is enabled, and what mode it is in.
enum ManagedZoneDnsSecConfigState {
  off("off"),
  on("on"),
  transfer("transfer");

  const ManagedZoneDnsSecConfigState(this.value);
  final String value;

  static ManagedZoneDnsSecConfigState fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneDnsSecConfigState value: $value');
  }
}

