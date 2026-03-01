/// The authentication type to use.
enum ZendeskAuthenticationType {
  valueBasic("Basic"),
  valueToken("Token");

  const ZendeskAuthenticationType(this.value);
  final String value;

  static ZendeskAuthenticationType fromValue(String value) {
    for (final item in ZendeskAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZendeskAuthenticationType value: $value');
  }
}

