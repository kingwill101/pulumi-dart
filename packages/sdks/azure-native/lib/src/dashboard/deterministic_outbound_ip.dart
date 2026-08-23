/// Whether a Grafana instance uses deterministic outbound IPs.
enum DeterministicOutboundIP {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const DeterministicOutboundIP(this.wireValue);
  final String wireValue;

  static DeterministicOutboundIP fromValue(String value) {
    for (final item in DeterministicOutboundIP.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeterministicOutboundIP value: $value');
  }
}
