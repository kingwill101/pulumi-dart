/// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
enum SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility3 {
  premium("PREMIUM"),
  standard("STANDARD");

  const SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility3(
      this.value);
  final String value;

  static SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility3
      fromValue(String value) {
    for (final item
        in SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility3
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility3 value: $value');
  }
}
