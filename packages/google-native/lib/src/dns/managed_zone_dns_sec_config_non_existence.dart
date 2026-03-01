/// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
enum ManagedZoneDnsSecConfigNonExistence {
  nsec("nsec"),
  nsec3("nsec3");

  const ManagedZoneDnsSecConfigNonExistence(this.value);
  final String value;

  static ManagedZoneDnsSecConfigNonExistence fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigNonExistence.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagedZoneDnsSecConfigNonExistence value: $value',
    );
  }
}
