/// A flag to determine whether or not SyncNtlmPasswords is enabled or disabled.
enum SyncNtlmPasswords {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncNtlmPasswords(this.value);
  final String value;

  static SyncNtlmPasswords fromValue(String value) {
    for (final item in SyncNtlmPasswords.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncNtlmPasswords value: $value');
  }
}

