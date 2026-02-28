/// Controls export of scan configurations and results to Security Command Center.
enum ScanConfigExportToSecurityCommandCenterWebsecurityscannerV1beta {
  exportToSecurityCommandCenterUnspecified(
      "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const ScanConfigExportToSecurityCommandCenterWebsecurityscannerV1beta(
      this.value);
  final String value;

  static ScanConfigExportToSecurityCommandCenterWebsecurityscannerV1beta
      fromValue(String value) {
    for (final item
        in ScanConfigExportToSecurityCommandCenterWebsecurityscannerV1beta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ScanConfigExportToSecurityCommandCenterWebsecurityscannerV1beta value: $value');
  }
}
