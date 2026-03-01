/// Customer Intent for Software Assurance Benefit.
enum SoftwareAssuranceIntent {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SoftwareAssuranceIntent(this.value);
  final String value;

  static SoftwareAssuranceIntent fromValue(String value) {
    for (final item in SoftwareAssuranceIntent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareAssuranceIntent value: $value');
  }
}

