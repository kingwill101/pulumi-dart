/// Modeling frequency controls the modeling compute frequency.
enum ModelingFrequency {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const ModelingFrequency(this.value);
  final String value;

  static ModelingFrequency fromValue(String value) {
    for (final item in ModelingFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingFrequency value: $value');
  }
}

