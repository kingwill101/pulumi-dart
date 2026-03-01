/// Authentication type used for accessing Azure Blob Storage.
enum AuthType {
  valueAccountKey("AccountKey"),
  valueManagedIdentity("ManagedIdentity");

  const AuthType(this.value);
  final String value;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}

