enum GrantType {
  valueAuthorizationCode("authorizationCode"),
  valueImplicit("implicit"),
  valueResourceOwnerPassword("resourceOwnerPassword"),
  valueClientCredentials("clientCredentials");

  const GrantType(this.value);
  final String value;

  static GrantType fromValue(String value) {
    for (final item in GrantType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrantType value: $value');
  }
}

