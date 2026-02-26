/// Specifies whether DNSSEC is enabled, and what mode it is in.
enum ManagedZoneDnsSecConfigState2 {
  off("off"),
  on("on"),
  transfer("transfer");

  const ManagedZoneDnsSecConfigState2(this.value);
  final String value;

  static ManagedZoneDnsSecConfigState2 fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneDnsSecConfigState2 value: $value');
  }
}
