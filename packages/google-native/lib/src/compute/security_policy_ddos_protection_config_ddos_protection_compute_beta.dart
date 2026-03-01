enum SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta(this.value);
  final String value;

  static SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta value: $value',
    );
  }
}
