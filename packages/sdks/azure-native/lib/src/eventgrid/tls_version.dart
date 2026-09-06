import 'package:pulumi/pulumi.dart' as pulumi;

/// Minimum TLS version that should be supported by webhook endpoint
enum TlsVersion implements pulumi.PulumiEnum<String> {
  value10("1.0"),
  value11("1.1"),
  value12("1.2");

  const TlsVersion(this.wireValue);
  @override
  final String wireValue;

  static TlsVersion fromValue(String value) {
    for (final item in TlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsVersion value: $value');
  }
}
