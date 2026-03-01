/// Encryption Key Source
enum EncryptionKeySourceType {
  valueMicrosoftAutomation("Microsoft.Automation"),
  valueMicrosoftKeyvault("Microsoft.Keyvault");

  const EncryptionKeySourceType(this.value);
  final String value;

  static EncryptionKeySourceType fromValue(String value) {
    for (final item in EncryptionKeySourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeySourceType value: $value');
  }
}

