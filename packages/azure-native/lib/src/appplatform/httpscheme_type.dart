/// Scheme to use for connecting to the host. Defaults to HTTP.
///
/// Possible enum values:
/// - `"HTTP"` means that the scheme used will be http://
/// - `"HTTPS"` means that the scheme used will be https://
enum HTTPSchemeType {
  valueHTTP("HTTP"),
  valueHTTPS("HTTPS");

  const HTTPSchemeType(this.value);
  final String value;

  static HTTPSchemeType fromValue(String value) {
    for (final item in HTTPSchemeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSchemeType value: $value');
  }
}

