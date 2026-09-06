import 'package:pulumi/pulumi.dart' as pulumi;

/// TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
enum AfdMinimumTlsVersion implements pulumi.PulumiEnum<String> {
  valueTLS10("TLS10"),
  valueTLS12("TLS12"),
  valueTLS13("TLS13");

  const AfdMinimumTlsVersion(this.wireValue);
  @override
  final String wireValue;

  static AfdMinimumTlsVersion fromValue(String value) {
    for (final item in AfdMinimumTlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdMinimumTlsVersion value: $value');
  }
}
