/// The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
enum EncryptionIdentityType {
  valueSystemAssigned("SystemAssigned");

  const EncryptionIdentityType(this.wireValue);
  final String wireValue;

  static EncryptionIdentityType fromValue(String value) {
    for (final item in EncryptionIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionIdentityType value: $value');
  }
}
