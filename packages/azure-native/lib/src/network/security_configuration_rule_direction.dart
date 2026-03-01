/// Indicates if the traffic matched against the rule in inbound or outbound.
enum SecurityConfigurationRuleDirection {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const SecurityConfigurationRuleDirection(this.value);
  final String value;

  static SecurityConfigurationRuleDirection fromValue(String value) {
    for (final item in SecurityConfigurationRuleDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfigurationRuleDirection value: $value');
  }
}

