import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate Source.
enum CertificateSource implements pulumi.PulumiEnum<String> {
  valueManaged("Managed"),
  valueKeyVault("KeyVault"),
  valueCustom("Custom"),
  valueBuiltIn("BuiltIn");

  const CertificateSource(this.wireValue);
  @override
  final String wireValue;

  static CertificateSource fromValue(String value) {
    for (final item in CertificateSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateSource value: $value');
  }
}
