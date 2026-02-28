enum SecurityPolicyDdosProtectionConfigDdosProtection {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtection(this.value);
  final String value;

  static SecurityPolicyDdosProtectionConfigDdosProtection fromValue(
      String value) {
    for (final item
        in SecurityPolicyDdosProtectionConfigDdosProtection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyDdosProtectionConfigDdosProtection value: $value');
  }
}
