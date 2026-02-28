/// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
enum SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1 {
  premium("PREMIUM"),
  standard("STANDARD");

  const SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1(
      this.value);
  final String value;

  static SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1
      fromValue(String value) {
    for (final item
        in SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1 value: $value');
  }
}
