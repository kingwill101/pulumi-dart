/// A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
enum SyncOnPremPasswords {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncOnPremPasswords(this.value);
  final String value;

  static SyncOnPremPasswords fromValue(String value) {
    for (final item in SyncOnPremPasswords.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncOnPremPasswords value: $value');
  }
}

