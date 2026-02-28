/// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
enum SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta {
  premium("PREMIUM"),
  standard("STANDARD");

  const SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta(
      this.value);
  final String value;

  static SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta
      fromValue(String value) {
    for (final item
        in SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta value: $value');
  }
}
