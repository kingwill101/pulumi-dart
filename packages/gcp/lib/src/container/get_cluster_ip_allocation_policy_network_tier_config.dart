// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIpAllocationPolicyNetworkTierConfig {
  /// Network tier configuration.
  final String networkTier;

  /// Creates a new [GetClusterIpAllocationPolicyNetworkTierConfig].
  /// [networkTier] Network tier configuration.
  GetClusterIpAllocationPolicyNetworkTierConfig({required this.networkTier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'networkTier': networkTier};
  }

  factory GetClusterIpAllocationPolicyNetworkTierConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterIpAllocationPolicyNetworkTierConfig(
      networkTier: map['networkTier'] as String,
    );
  }
}
