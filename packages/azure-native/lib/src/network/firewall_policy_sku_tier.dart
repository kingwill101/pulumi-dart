/// Tier of Firewall Policy.
enum FirewallPolicySkuTier {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic");

  const FirewallPolicySkuTier(this.value);
  final String value;

  static FirewallPolicySkuTier fromValue(String value) {
    for (final item in FirewallPolicySkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicySkuTier value: $value');
  }
}

