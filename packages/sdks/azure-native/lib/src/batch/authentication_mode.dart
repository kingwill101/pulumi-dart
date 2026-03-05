/// The authentication mode for the Batch account.
enum AuthenticationMode {
  sharedKey("SharedKey"),
  aAD("AAD"),
  taskAuthenticationToken("TaskAuthenticationToken");

  const AuthenticationMode(this.wireValue);
  final String wireValue;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}

