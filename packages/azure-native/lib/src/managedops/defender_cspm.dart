/// Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
enum DefenderCspm {
  valueEnable("Enable"),
  valueDisable("Disable");

  const DefenderCspm(this.value);
  final String value;

  static DefenderCspm fromValue(String value) {
    for (final item in DefenderCspm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefenderCspm value: $value');
  }
}

