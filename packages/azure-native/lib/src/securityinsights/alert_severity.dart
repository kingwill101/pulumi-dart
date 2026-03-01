/// The severity for alerts created by this alert rule.
enum AlertSeverity {
  valueHigh("High"),
  valueMedium("Medium"),
  valueLow("Low"),
  valueInformational("Informational");

  const AlertSeverity(this.value);
  final String value;

  static AlertSeverity fromValue(String value) {
    for (final item in AlertSeverity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertSeverity value: $value');
  }
}

