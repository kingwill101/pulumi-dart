/// The type of kek encryption key
enum EncryptionKekType {
  valueMicrosoftManaged("MicrosoftManaged"),
  valueCustomerManaged("CustomerManaged");

  const EncryptionKekType(this.value);
  final String value;

  static EncryptionKekType fromValue(String value) {
    for (final item in EncryptionKekType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKekType value: $value');
  }
}

