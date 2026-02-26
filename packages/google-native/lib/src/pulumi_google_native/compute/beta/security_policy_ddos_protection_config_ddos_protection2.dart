enum SecurityPolicyDdosProtectionConfigDdosProtection2 {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtection2(this.value);
  final String value;

  static SecurityPolicyDdosProtectionConfigDdosProtection2 fromValue(
      String value) {
    for (final item
        in SecurityPolicyDdosProtectionConfigDdosProtection2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyDdosProtectionConfigDdosProtection2 value: $value');
  }
}
