/// The authentication type to use.
enum TeamDeskAuthenticationType {
  valueBasic("Basic"),
  valueToken("Token");

  const TeamDeskAuthenticationType(this.value);
  final String value;

  static TeamDeskAuthenticationType fromValue(String value) {
    for (final item in TeamDeskAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamDeskAuthenticationType value: $value');
  }
}

