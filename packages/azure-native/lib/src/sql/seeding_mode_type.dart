/// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
enum SeedingModeType {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const SeedingModeType(this.value);
  final String value;

  static SeedingModeType fromValue(String value) {
    for (final item in SeedingModeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeedingModeType value: $value');
  }
}

