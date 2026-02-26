enum SecurityPolicyDdosProtectionConfigDdosProtection3 {
  advanced("ADVANCED"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtection3(this.value);
  final String value;

  static SecurityPolicyDdosProtectionConfigDdosProtection3 fromValue(
      String value) {
    for (final item
        in SecurityPolicyDdosProtectionConfigDdosProtection3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyDdosProtectionConfigDdosProtection3 value: $value');
  }
}
