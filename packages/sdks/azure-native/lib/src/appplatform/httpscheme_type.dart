import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheme to use for connecting to the host. Defaults to HTTP.
///
/// Possible enum values:
/// - `"HTTP"` means that the scheme used will be http://
/// - `"HTTPS"` means that the scheme used will be https://
enum HTTPSchemeType implements pulumi.PulumiEnum<String> {
  valueHTTP("HTTP"),
  valueHTTPS("HTTPS");

  const HTTPSchemeType(this.wireValue);
  @override
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
