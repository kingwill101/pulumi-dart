import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol type.
enum AzureFirewallApplicationRuleProtocolType implements pulumi.PulumiEnum<String> {
  valueHttp("Http"),
  valueHttps("Https"),
  valueMssql("Mssql");

  const AzureFirewallApplicationRuleProtocolType(this.wireValue);
  @override
  final String wireValue;

  static AzureFirewallApplicationRuleProtocolType fromValue(String value) {
    for (final item in AzureFirewallApplicationRuleProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallApplicationRuleProtocolType value: $value');
  }
}
