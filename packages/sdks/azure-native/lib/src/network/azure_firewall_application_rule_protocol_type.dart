/// Protocol type.
enum AzureFirewallApplicationRuleProtocolType {
  valueHttp("Http"),
  valueHttps("Https"),
  valueMssql("Mssql");

  const AzureFirewallApplicationRuleProtocolType(this.wireValue);
  final String wireValue;

  static AzureFirewallApplicationRuleProtocolType fromValue(String value) {
    for (final item in AzureFirewallApplicationRuleProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AzureFirewallApplicationRuleProtocolType value: $value',
    );
  }
}
