/// The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
enum KeySource {
  microsoftNetApp("Microsoft.NetApp"),
  microsoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.value);
  final String value;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}

