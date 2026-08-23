/// Enable egress NAT, enabled by default
enum EgressNat {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const EgressNat(this.wireValue);
  final String wireValue;

  static EgressNat fromValue(String value) {
    for (final item in EgressNat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressNat value: $value');
  }
}
