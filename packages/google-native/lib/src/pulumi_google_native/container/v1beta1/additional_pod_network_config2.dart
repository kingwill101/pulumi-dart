// ignore_for_file: unused_element, unnecessary_cast

import 'max_pods_constraint2.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfig2 {
  /// The maximum number of pods per node which use this pod network
  final MaxPodsConstraint2? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final String? secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs
  final String? subnetwork;

  AdditionalPodNetworkConfig2({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue.toMap();
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

  factory AdditionalPodNetworkConfig2.fromMap(Map<String, dynamic> map) {
    return AdditionalPodNetworkConfig2(
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : MaxPodsConstraint2.fromMap(
              (map['maxPodsPerNode'] as Map).cast<String, dynamic>()),
      secondaryPodRange: map['secondaryPodRange'] == null
          ? null
          : map['secondaryPodRange'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
