/// Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
enum DefenderCspm {
  valueEnable("Enable"),
  valueDisable("Disable");

  const DefenderCspm(this.wireValue);
  final String wireValue;

  static DefenderCspm fromValue(String value) {
    for (final item in DefenderCspm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefenderCspm value: $value');
  }
}
