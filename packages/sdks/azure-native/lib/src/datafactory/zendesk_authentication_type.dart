/// The authentication type to use.
enum ZendeskAuthenticationType {
  valueBasic("Basic"),
  valueToken("Token");

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
