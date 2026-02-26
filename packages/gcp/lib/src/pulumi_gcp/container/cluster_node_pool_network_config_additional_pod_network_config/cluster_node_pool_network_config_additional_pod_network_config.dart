// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final int? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final String? secondaryPodRange;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final String? subnetwork;

  ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig({
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

  factory ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig(
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
