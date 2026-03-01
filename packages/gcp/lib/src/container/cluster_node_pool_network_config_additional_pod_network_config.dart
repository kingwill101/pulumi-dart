// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final int? maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final String? secondaryPodRange;
  /// The name or self_link of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final String? subnetwork;

  /// Creates a new [ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] The name or self_link of the Google Compute Engine
  ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?maxPodsPerNode,
      'secondaryPodRange': ?secondaryPodRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode: map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
      secondaryPodRange: map['secondaryPodRange'] == null ? null : map['secondaryPodRange'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

