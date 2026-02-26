// ignore_for_file: unused_element, unnecessary_cast

import 'max_pods_constraint_response2.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfigResponse2 {
  /// The maximum number of pods per node which use this pod network
  final MaxPodsConstraintResponse2 maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final String secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs
  final String subnetwork;

  AdditionalPodNetworkConfigResponse2({
    required this.maxPodsPerNode,
    required this.secondaryPodRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode.toMap();
    map['secondaryPodRange'] = secondaryPodRange;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory AdditionalPodNetworkConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return AdditionalPodNetworkConfigResponse2(
      maxPodsPerNode: MaxPodsConstraintResponse2.fromMap(
          (map['maxPodsPerNode'] as Map).cast<String, dynamic>()),
      secondaryPodRange: map['secondaryPodRange'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
