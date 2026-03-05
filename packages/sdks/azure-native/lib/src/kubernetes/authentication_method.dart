/// The mode of client authentication.
enum AuthenticationMethod {
  valueToken("Token"),
  valueAAD("AAD");

  const AuthenticationMethod(this.wireValue);
  final String wireValue;

  static AuthenticationMethod fromValue(String value) {
    for (final item in AuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMethod value: $value');
  }
}

