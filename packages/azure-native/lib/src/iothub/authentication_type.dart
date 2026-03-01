/// Specifies authentication type being used for connecting to the storage account.
enum AuthenticationType {
  valueKeyBased("keyBased"),
  valueIdentityBased("identityBased");

  const AuthenticationType(this.value);
  final String value;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}

