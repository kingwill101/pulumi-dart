import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether to automatically synchronize certificate from key vault or not.
enum KeyVaultCertificateAutoSync implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const KeyVaultCertificateAutoSync(this.wireValue);
  @override
  final String wireValue;

  static KeyVaultCertificateAutoSync fromValue(String value) {
    for (final item in KeyVaultCertificateAutoSync.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyVaultCertificateAutoSync value: $value');
  }
}
