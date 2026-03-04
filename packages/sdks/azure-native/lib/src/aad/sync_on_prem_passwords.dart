/// A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
enum SyncOnPremPasswords {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncOnPremPasswords(this.wireValue);
  final String wireValue;

  static SyncOnPremPasswords fromValue(String value) {
    for (final item in SyncOnPremPasswords.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncOnPremPasswords value: $value');
  }
}
