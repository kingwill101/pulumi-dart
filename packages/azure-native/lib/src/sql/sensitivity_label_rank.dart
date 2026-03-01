enum SensitivityLabelRank {
  valueNone("None"),
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High"),
  valueCritical("Critical");

  const SensitivityLabelRank(this.value);
  final String value;

  static SensitivityLabelRank fromValue(String value) {
    for (final item in SensitivityLabelRank.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SensitivityLabelRank value: $value');
  }
}

