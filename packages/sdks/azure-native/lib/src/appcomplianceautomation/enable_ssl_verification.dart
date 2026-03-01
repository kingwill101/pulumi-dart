/// whether to enable ssl verification
enum EnableSslVerification {
  true_("true"),
  false_("false");

  const EnableSslVerification(this.value);
  final String value;

  static EnableSslVerification fromValue(String value) {
    for (final item in EnableSslVerification.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableSslVerification value: $value');
  }
}

