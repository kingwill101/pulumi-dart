/// Controls export of scan configurations and results to Security Command Center.
enum ScanConfigExportToSecurityCommandCenter {
  exportToSecurityCommandCenterUnspecified("EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const ScanConfigExportToSecurityCommandCenter(this.value);
  final String value;

  static ScanConfigExportToSecurityCommandCenter fromValue(String value) {
    for (final item in ScanConfigExportToSecurityCommandCenter.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigExportToSecurityCommandCenter value: $value');
  }
}

