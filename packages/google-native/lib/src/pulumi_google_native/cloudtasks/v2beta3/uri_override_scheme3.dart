/// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
enum UriOverrideScheme3 {
  schemeUnspecified("SCHEME_UNSPECIFIED"),
  http("HTTP"),
  https("HTTPS");

  const UriOverrideScheme3(this.value);
  final String value;

  static UriOverrideScheme3 fromValue(String value) {
    for (final item in UriOverrideScheme3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideScheme3 value: $value');
  }
}
