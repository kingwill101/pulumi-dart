/// [Required] Authentication mode for the endpoint.
enum AuthMode {
  valueAAD("AAD");

  const AuthMode(this.value);
  final String value;

  static AuthMode fromValue(String value) {
    for (final item in AuthMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthMode value: $value');
  }
}

