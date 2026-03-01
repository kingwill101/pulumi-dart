/// Kind of this capability host.
enum CapabilityHostKind {
  valueAgents("Agents");

  const CapabilityHostKind(this.value);
  final String value;

  static CapabilityHostKind fromValue(String value) {
    for (final item in CapabilityHostKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapabilityHostKind value: $value');
  }
}

