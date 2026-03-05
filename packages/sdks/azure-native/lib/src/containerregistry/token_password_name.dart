/// The password name "password1" or "password2"
enum TokenPasswordName {
  valuePassword1("password1"),
  valuePassword2("password2");

  const TokenPasswordName(this.wireValue);
  final String wireValue;

  static TokenPasswordName fromValue(String value) {
    for (final item in TokenPasswordName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenPasswordName value: $value');
  }
}

