/// Indicates whether to automatically synchronize certificate from key vault or not.
enum KeyVaultCertificateAutoSync {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const KeyVaultCertificateAutoSync(this.value);
  final String value;

  static KeyVaultCertificateAutoSync fromValue(String value) {
    for (final item in KeyVaultCertificateAutoSync.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyVaultCertificateAutoSync value: $value');
  }
}

