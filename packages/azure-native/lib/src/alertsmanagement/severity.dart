/// The alert rule severity.
enum Severity {
  valueSev0("Sev0"),
  valueSev1("Sev1"),
  valueSev2("Sev2"),
  valueSev3("Sev3"),
  valueSev4("Sev4");

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

