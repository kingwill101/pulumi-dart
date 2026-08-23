/// Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
enum AutoUpgradeOptions {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AutoUpgradeOptions(this.wireValue);
  final String wireValue;

  static AutoUpgradeOptions fromValue(String value) {
    for (final item in AutoUpgradeOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpgradeOptions value: $value');
  }
}
