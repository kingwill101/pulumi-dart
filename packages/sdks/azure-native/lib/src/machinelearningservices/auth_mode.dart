/// [Required] Authentication mode for the endpoint.
enum AuthMode {
  valueAAD("AAD");

  const AuthMode(this.wireValue);
  final String wireValue;

  static AuthMode fromValue(String value) {
    for (final item in AuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthMode value: $value');
  }
}
