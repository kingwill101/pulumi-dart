import 'package:pulumi/pulumi.dart' as pulumi;

/// The minimum TLS version for the cluster to support, e.g. '1.2'
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
