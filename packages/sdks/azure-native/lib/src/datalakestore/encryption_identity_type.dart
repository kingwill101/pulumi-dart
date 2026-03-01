/// The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
enum EncryptionIdentityType {
  valueSystemAssigned("SystemAssigned");

  const EncryptionIdentityType(this.value);
  final String value;

  static EncryptionIdentityType fromValue(String value) {
    for (final item in EncryptionIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionIdentityType value: $value');
  }
}

