/// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
enum SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2 {
  premium("PREMIUM"),
  standard("STANDARD");

  const SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2(
      this.value);
  final String value;

  static SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2
      fromValue(String value) {
    for (final item
        in SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2 value: $value');
  }
}
