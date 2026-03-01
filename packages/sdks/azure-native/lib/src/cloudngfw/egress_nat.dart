/// Enable egress NAT, enabled by default
enum EgressNat {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const EgressNat(this.value);
  final String value;

  static EgressNat fromValue(String value) {
    for (final item in EgressNat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressNat value: $value');
  }
}

