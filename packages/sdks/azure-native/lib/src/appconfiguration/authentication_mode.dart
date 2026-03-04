/// The data plane proxy authentication mode. This property manages the authentication mode of request to the data plane resources.
enum AuthenticationMode {
  valueLocal("Local"),
  valuePassThrough("Pass-through");

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
