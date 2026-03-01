/// Protocol type.
enum FirewallPolicyRuleConditionApplicationProtocolType {
  valueHttp("Http"),
  valueHttps("Https");

  const FirewallPolicyRuleConditionApplicationProtocolType(this.value);
  final String value;

  static FirewallPolicyRuleConditionApplicationProtocolType fromValue(String value) {
    for (final item in FirewallPolicyRuleConditionApplicationProtocolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleConditionApplicationProtocolType value: $value');
  }
}

