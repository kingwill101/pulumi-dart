/// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
enum KeySource {
  valueMicrosoftStorage("Microsoft.Storage"),
  valueMicrosoftKeyvault("Microsoft.Keyvault");

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

