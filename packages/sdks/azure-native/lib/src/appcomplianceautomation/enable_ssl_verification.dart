/// whether to enable ssl verification
enum EnableSslVerification {
  true_("true"),
  false_("false");

  const EnableSslVerification(this.wireValue);
  final String wireValue;

  static EnableSslVerification fromValue(String value) {
    for (final item in EnableSslVerification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableSslVerification value: $value');
  }
}

