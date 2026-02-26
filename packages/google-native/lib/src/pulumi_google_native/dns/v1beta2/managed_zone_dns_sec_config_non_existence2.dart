/// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
enum ManagedZoneDnsSecConfigNonExistence2 {
  nsec("nsec"),
  nsec3("nsec3");

  const ManagedZoneDnsSecConfigNonExistence2(this.value);
  final String value;

  static ManagedZoneDnsSecConfigNonExistence2 fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigNonExistence2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ManagedZoneDnsSecConfigNonExistence2 value: $value');
  }
}
