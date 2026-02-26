// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final int maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final String secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs.
  final String subnetwork;

  GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig({
    required this.maxPodsPerNode,
    required this.secondaryPodRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode;
    map['secondaryPodRange'] = secondaryPodRange;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode: map['maxPodsPerNode'] as int,
      secondaryPodRange: map['secondaryPodRange'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
