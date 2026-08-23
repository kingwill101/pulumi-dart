/// The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
enum KeySource {
  default_("Default"),
  microsoftKeyvault("Microsoft.Keyvault");

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
