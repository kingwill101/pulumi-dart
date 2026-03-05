/// The type of kek encryption key
enum EncryptionKekType {
  valueMicrosoftManaged("MicrosoftManaged"),
  valueCustomerManaged("CustomerManaged");

  const EncryptionKekType(this.wireValue);
  final String wireValue;

  static EncryptionKekType fromValue(String value) {
    for (final item in EncryptionKekType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKekType value: $value');
  }
}

