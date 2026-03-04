/// The authentication type to use.
enum TeamDeskAuthenticationType {
  valueBasic("Basic"),
  valueToken("Token");

  const TeamDeskAuthenticationType(this.wireValue);
  final String wireValue;

  static TeamDeskAuthenticationType fromValue(String value) {
    for (final item in TeamDeskAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamDeskAuthenticationType value: $value');
  }
}
