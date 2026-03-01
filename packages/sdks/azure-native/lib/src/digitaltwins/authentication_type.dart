/// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
enum AuthenticationType {
  valueKeyBased("KeyBased"),
  valueIdentityBased("IdentityBased");

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

