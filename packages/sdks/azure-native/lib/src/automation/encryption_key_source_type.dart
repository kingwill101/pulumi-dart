/// Encryption Key Source
enum EncryptionKeySourceType {
  valueMicrosoftAutomation("Microsoft.Automation"),
  valueMicrosoftKeyvault("Microsoft.Keyvault");

  const EncryptionKeySourceType(this.wireValue);
  final String wireValue;

  static EncryptionKeySourceType fromValue(String value) {
    for (final item in EncryptionKeySourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeySourceType value: $value');
  }
}
