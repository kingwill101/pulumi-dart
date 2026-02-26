// ignore_for_file: unused_element, unnecessary_cast

class ClusterIpAllocationPolicyNetworkTierConfig {
  /// Network tier configuration.
  /// Accepted values are:
  /// * `NETWORK_TIER_DEFAULT`: (Default) Use project-level configuration.
  /// * `NETWORK_TIER_PREMIUM`: Premium network tier.
  /// * `NETWORK_TIER_STANDARD`: Standard network tier.
  final String networkTier;

  ClusterIpAllocationPolicyNetworkTierConfig({
    required this.networkTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkTier'] = networkTier;
    return map;
  }

  factory ClusterIpAllocationPolicyNetworkTierConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyNetworkTierConfig(
      networkTier: map['networkTier'] as String,
    );
  }
}
