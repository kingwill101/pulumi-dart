enum GrantType {
  valueAuthorizationCode("authorizationCode"),
  valueImplicit("implicit"),
  valueResourceOwnerPassword("resourceOwnerPassword"),
  valueClientCredentials("clientCredentials");

  const GrantType(this.wireValue);
  final String wireValue;

  static GrantType fromValue(String value) {
    for (final item in GrantType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrantType value: $value');
  }
}
