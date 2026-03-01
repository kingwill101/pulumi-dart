/// Gets the business case savings option type.
enum SavingsOption {
  unknown("Unknown"),
  rI3Year("RI3Year"),
  savingsPlan3Year("SavingsPlan3Year");

  const SavingsOption(this.value);
  final String value;

  static SavingsOption fromValue(String value) {
    for (final item in SavingsOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SavingsOption value: $value');
  }
}

