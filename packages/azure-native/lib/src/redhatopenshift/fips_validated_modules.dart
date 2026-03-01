/// If FIPS validated crypto modules are used
enum FipsValidatedModules {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const FipsValidatedModules(this.value);
  final String value;

  static FipsValidatedModules fromValue(String value) {
    for (final item in FipsValidatedModules.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FipsValidatedModules value: $value');
  }
}

