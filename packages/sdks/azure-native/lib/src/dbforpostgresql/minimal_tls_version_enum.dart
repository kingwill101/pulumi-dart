import 'package:pulumi/pulumi.dart' as pulumi;

/// Enforce a minimal Tls version for the server.
enum MinimalTlsVersionEnum implements pulumi.PulumiEnum<String> {
  valueTLS10("TLS1_0"),
  valueTLS11("TLS1_1"),
  valueTLS12("TLS1_2"),
  valueTLSEnforcementDisabled("TLSEnforcementDisabled");

  const MinimalTlsVersionEnum(this.wireValue);
  @override
  final String wireValue;

  static MinimalTlsVersionEnum fromValue(String value) {
    for (final item in MinimalTlsVersionEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalTlsVersionEnum value: $value');
  }
}
