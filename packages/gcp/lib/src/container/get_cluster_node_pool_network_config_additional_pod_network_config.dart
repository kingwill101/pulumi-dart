// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final int maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final String secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs.
  final String subnetwork;

  /// Creates a new [GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs.
  GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig({
    required this.maxPodsPerNode,
    required this.secondaryPodRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
      'secondaryPodRange': secondaryPodRange,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode: map['maxPodsPerNode'] as int,
      secondaryPodRange: map['secondaryPodRange'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
