enum ClientAuthenticationMethod {
  valueBasic("Basic"),
  valueBody("Body");

  const ClientAuthenticationMethod(this.value);
  final String value;

  static ClientAuthenticationMethod fromValue(String value) {
    for (final item in ClientAuthenticationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientAuthenticationMethod value: $value');
  }
}

