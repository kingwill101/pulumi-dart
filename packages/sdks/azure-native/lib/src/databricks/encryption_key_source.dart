/// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
enum EncryptionKeySource {
  valueMicrosoftKeyvault("Microsoft.Keyvault");

  const EncryptionKeySource(this.value);
  final String value;

  static EncryptionKeySource fromValue(String value) {
    for (final item in EncryptionKeySource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeySource value: $value');
  }
}

