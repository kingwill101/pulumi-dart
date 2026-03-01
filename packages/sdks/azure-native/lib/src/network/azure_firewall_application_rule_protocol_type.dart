/// Protocol type.
enum AzureFirewallApplicationRuleProtocolType {
  valueHttp("Http"),
  valueHttps("Https"),
  valueMssql("Mssql");

  const AzureFirewallApplicationRuleProtocolType(this.value);
  final String value;

  static AzureFirewallApplicationRuleProtocolType fromValue(String value) {
    for (final item in AzureFirewallApplicationRuleProtocolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallApplicationRuleProtocolType value: $value');
  }
}

