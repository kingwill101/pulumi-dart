/// Indicates whether to automatically synchronize certificate from key vault or not.
enum KeyVaultCertificateAutoSync {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const KeyVaultCertificateAutoSync(this.wireValue);
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

