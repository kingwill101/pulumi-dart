/// Customer Intent for Software Assurance Benefit.
enum SoftwareAssuranceIntent {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SoftwareAssuranceIntent(this.wireValue);
  final String wireValue;

  static SoftwareAssuranceIntent fromValue(String value) {
    for (final item in SoftwareAssuranceIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareAssuranceIntent value: $value');
  }
}
