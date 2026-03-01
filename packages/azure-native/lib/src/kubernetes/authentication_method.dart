/// The mode of client authentication.
enum AuthenticationMethod {
  valueToken("Token"),
  valueAAD("AAD");

  const AuthenticationMethod(this.value);
  final String value;

  static AuthenticationMethod fromValue(String value) {
    for (final item in AuthenticationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMethod value: $value');
  }
}

