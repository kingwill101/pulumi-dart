// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNetworkConfigNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for the NodePool. [Valid values](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.Tier) include: "TIER_1" and "TIER_UNSPECIFIED".
  final String totalEgressBandwidthTier;

  /// Creates a new [NodePoolNetworkConfigNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool. [Valid values](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.Tier) include: "TIER_1" and "TIER_UNSPECIFIED".
  NodePoolNetworkConfigNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NodePoolNetworkConfigNetworkPerformanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNetworkConfigNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
