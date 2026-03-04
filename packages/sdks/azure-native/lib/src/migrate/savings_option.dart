/// Gets the business case savings option type.
enum SavingsOption {
  unknown("Unknown"),
  rI3Year("RI3Year"),
  savingsPlan3Year("SavingsPlan3Year");

  const SavingsOption(this.wireValue);
  final String wireValue;

  static SavingsOption fromValue(String value) {
    for (final item in SavingsOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SavingsOption value: $value');
  }
}
