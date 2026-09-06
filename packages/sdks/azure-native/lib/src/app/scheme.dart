import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheme to use for connecting to the host. Defaults to HTTP.
enum Scheme implements pulumi.PulumiEnum<String> {
  valueHTTP("HTTP"),
  valueHTTPS("HTTPS");

  const Scheme(this.wireValue);
  @override
  final String wireValue;

  static Scheme fromValue(String value) {
    for (final item in Scheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Scheme value: $value');
  }
}
