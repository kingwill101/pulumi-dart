/// Specifies which upgrade policy to use.
enum BareMetalClusterUpgradePolicyPolicy {
  nodePoolPolicyUnspecified("NODE_POOL_POLICY_UNSPECIFIED"),
  serial("SERIAL"),
  concurrent("CONCURRENT");

  const BareMetalClusterUpgradePolicyPolicy(this.value);
  final String value;

  static BareMetalClusterUpgradePolicyPolicy fromValue(String value) {
    for (final item in BareMetalClusterUpgradePolicyPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BareMetalClusterUpgradePolicyPolicy value: $value',
    );
  }
}
