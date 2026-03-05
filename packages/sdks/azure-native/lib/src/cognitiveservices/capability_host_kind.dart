/// Kind of this capability host.
enum CapabilityHostKind {
  valueAgents("Agents");

  const CapabilityHostKind(this.wireValue);
  final String wireValue;

  static CapabilityHostKind fromValue(String value) {
    for (final item in CapabilityHostKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapabilityHostKind value: $value');
  }
}

