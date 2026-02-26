// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIpAllocationPolicyNetworkTierConfig {
  /// Network tier configuration.
  final String networkTier;

  GetClusterIpAllocationPolicyNetworkTierConfig({
    required this.networkTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkTier'] = networkTier;
    return map;
  }

  factory GetClusterIpAllocationPolicyNetworkTierConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyNetworkTierConfig(
      networkTier: map['networkTier'] as String,
    );
  }
}
