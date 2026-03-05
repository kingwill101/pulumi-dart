enum ClientAuthenticationMethod {
  valueBasic("Basic"),
  valueBody("Body");

  const ClientAuthenticationMethod(this.wireValue);
  final String wireValue;

  static ClientAuthenticationMethod fromValue(String value) {
    for (final item in ClientAuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientAuthenticationMethod value: $value');
  }
}

