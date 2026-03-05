/// The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
enum KeySource {
  microsoftNetApp("Microsoft.NetApp"),
  microsoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.wireValue);
  final String wireValue;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}

