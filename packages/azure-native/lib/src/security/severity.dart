/// The severity level of the assessment
enum Severity {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const Severity(this.value);
  final String value;

  static Severity fromValue(String value) {
    for (final item in Severity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Severity value: $value');
  }
}

