/// Controls export of scan configurations and results to Security Command Center.
enum ScanConfigExportToSecurityCommandCenter2 {
  exportToSecurityCommandCenterUnspecified(
      "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const ScanConfigExportToSecurityCommandCenter2(this.value);
  final String value;

  static ScanConfigExportToSecurityCommandCenter2 fromValue(String value) {
    for (final item in ScanConfigExportToSecurityCommandCenter2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ScanConfigExportToSecurityCommandCenter2 value: $value');
  }
}
