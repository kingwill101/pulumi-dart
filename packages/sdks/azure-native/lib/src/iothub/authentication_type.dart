/// Specifies authentication type being used for connecting to the storage account.
enum AuthenticationType {
  valueKeyBased("keyBased"),
  valueIdentityBased("identityBased");

  const AuthenticationType(this.wireValue);
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}
