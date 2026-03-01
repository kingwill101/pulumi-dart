/// The data plane proxy authentication mode. This property manages the authentication mode of request to the data plane resources.
enum AuthenticationMode {
  valueLocal("Local"),
  valuePassThrough("Pass-through");

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

