/// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
enum EncryptionConfigType {
  valueUserManaged("UserManaged"),
  valueServiceManaged("ServiceManaged");

  const EncryptionConfigType(this.value);
  final String value;

  static EncryptionConfigType fromValue(String value) {
    for (final item in EncryptionConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionConfigType value: $value');
  }
}

