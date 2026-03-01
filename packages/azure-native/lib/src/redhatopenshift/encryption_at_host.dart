/// Whether master virtual machines are encrypted at host.
enum EncryptionAtHost {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EncryptionAtHost(this.value);
  final String value;

  static EncryptionAtHost fromValue(String value) {
    for (final item in EncryptionAtHost.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionAtHost value: $value');
  }
}

