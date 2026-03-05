/// The operation mode for Threat Intelligence.
enum AzureFirewallThreatIntelMode {
  valueAlert("Alert"),
  valueDeny("Deny"),
  valueOff("Off");

  const AzureFirewallThreatIntelMode(this.wireValue);
  final String wireValue;

  static AzureFirewallThreatIntelMode fromValue(String value) {
    for (final item in AzureFirewallThreatIntelMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallThreatIntelMode value: $value');
  }
}

