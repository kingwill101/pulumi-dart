/// Type.
enum EncryptionKeyType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  googleManaged("GOOGLE_MANAGED"),
  customerManaged("CUSTOMER_MANAGED");

  const EncryptionKeyType(this.value);
  final String value;

  static EncryptionKeyType fromValue(String value) {
    for (final item in EncryptionKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeyType value: $value');
  }
}
