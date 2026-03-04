/// Scheme to use for connecting to the host. Defaults to HTTP.
///
/// Possible enum values:
/// - `"HTTP"` means that the scheme used will be http://
/// - `"HTTPS"` means that the scheme used will be https://
enum HTTPSchemeType {
  valueHTTP("HTTP"),
  valueHTTPS("HTTPS");

  const HTTPSchemeType(this.wireValue);
  final String wireValue;

  static HTTPSchemeType fromValue(String value) {
    for (final item in HTTPSchemeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSchemeType value: $value');
  }
}
