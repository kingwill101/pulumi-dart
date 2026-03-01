/// Indicates whether the Arc agents on the provisioned clusters be upgraded automatically to the latest version. Defaults to Enabled.
enum AutoUpgradeOptions {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AutoUpgradeOptions(this.value);
  final String value;

  static AutoUpgradeOptions fromValue(String value) {
    for (final item in AutoUpgradeOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpgradeOptions value: $value');
  }
}

