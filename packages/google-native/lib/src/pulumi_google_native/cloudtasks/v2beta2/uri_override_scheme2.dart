/// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
enum UriOverrideScheme2 {
  schemeUnspecified("SCHEME_UNSPECIFIED"),
  http("HTTP"),
  https("HTTPS");

  const UriOverrideScheme2(this.value);
  final String value;

  static UriOverrideScheme2 fromValue(String value) {
    for (final item in UriOverrideScheme2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideScheme2 value: $value');
  }
}
