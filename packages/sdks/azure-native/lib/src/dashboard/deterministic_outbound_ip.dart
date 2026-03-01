/// Whether a Grafana instance uses deterministic outbound IPs.
enum DeterministicOutboundIP {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const DeterministicOutboundIP(this.value);
  final String value;

  static DeterministicOutboundIP fromValue(String value) {
    for (final item in DeterministicOutboundIP.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeterministicOutboundIP value: $value');
  }
}

