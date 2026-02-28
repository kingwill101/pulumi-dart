// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final int? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final String? secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs.
  final String? subnetwork;

  /// Creates a new [NodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs.
  NodePoolNetworkConfigAdditionalPodNetworkConfig({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    final secondaryPodRangeValue = secondaryPodRange;
    if (secondaryPodRangeValue != null) {
      map['secondaryPodRange'] = secondaryPodRangeValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory NodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode:
          map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
      secondaryPodRange: map['secondaryPodRange'] == null
          ? null
          : map['secondaryPodRange'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
