/// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
enum EncryptionConfigType {
  valueUserManaged("UserManaged"),
  valueServiceManaged("ServiceManaged");

  const EncryptionConfigType(this.wireValue);
  final String wireValue;

  static EncryptionConfigType fromValue(String value) {
    for (final item in EncryptionConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionConfigType value: $value');
  }
}
