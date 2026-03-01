/// Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
enum HybridSecondaryUsage {
  valueActive("Active"),
  valuePassive("Passive");

  const HybridSecondaryUsage(this.value);
  final String value;

  static HybridSecondaryUsage fromValue(String value) {
    for (final item in HybridSecondaryUsage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HybridSecondaryUsage value: $value');
  }
}

