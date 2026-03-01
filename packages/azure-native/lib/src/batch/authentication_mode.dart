/// The authentication mode for the Batch account.
enum AuthenticationMode {
  sharedKey("SharedKey"),
  aAD("AAD"),
  taskAuthenticationToken("TaskAuthenticationToken");

  const AuthenticationMode(this.value);
  final String value;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}

