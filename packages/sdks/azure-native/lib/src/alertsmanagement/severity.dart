/// The alert rule severity.
enum Severity {
  valueSev0("Sev0"),
  valueSev1("Sev1"),
  valueSev2("Sev2"),
  valueSev3("Sev3"),
  valueSev4("Sev4");

  const Severity(this.wireValue);
  final String wireValue;

  static Severity fromValue(String value) {
    for (final item in Severity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Severity value: $value');
  }
}

