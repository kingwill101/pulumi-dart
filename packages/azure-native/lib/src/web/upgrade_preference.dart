/// Upgrade Preference
enum UpgradePreference {
  valueNone("None"),
  valueEarly("Early"),
  valueLate("Late"),
  valueManual("Manual");

  const UpgradePreference(this.value);
  final String value;

  static UpgradePreference fromValue(String value) {
    for (final item in UpgradePreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradePreference value: $value');
  }
}

