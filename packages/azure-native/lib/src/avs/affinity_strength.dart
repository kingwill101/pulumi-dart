/// vm-host placement policy affinity strength (should/must)
enum AffinityStrength {
  should("Should"),
  must("Must");

  const AffinityStrength(this.value);
  final String value;

  static AffinityStrength fromValue(String value) {
    for (final item in AffinityStrength.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AffinityStrength value: $value');
  }
}

