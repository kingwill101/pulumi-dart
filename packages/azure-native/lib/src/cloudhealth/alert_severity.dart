/// The severity of triggered alert.
enum AlertSeverity {
  sev0("Sev0"),
  sev1("Sev1"),
  sev2("Sev2"),
  sev3("Sev3"),
  sev4("Sev4");

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

