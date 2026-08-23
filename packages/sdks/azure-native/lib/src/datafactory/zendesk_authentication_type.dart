/// The authentication type to use.
enum ZendeskAuthenticationType {
  basic("Basic"),
  token("Token");

  const ZendeskAuthenticationType(this.wireValue);
  final String wireValue;

  static ZendeskAuthenticationType fromValue(String value) {
    for (final item in ZendeskAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZendeskAuthenticationType value: $value');
  }
}
