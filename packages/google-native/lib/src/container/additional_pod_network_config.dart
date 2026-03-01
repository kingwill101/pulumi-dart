// ignore_for_file: unused_element, unnecessary_cast

import 'max_pods_constraint.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network
  final MaxPodsConstraint? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final String? secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs
  final String? subnetwork;

  /// Creates a new [AdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs
  AdditionalPodNetworkConfig({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?maxPodsPerNode == null
          ? null
          : maxPodsPerNode!.toMap(),
      'secondaryPodRange': ?secondaryPodRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory AdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalPodNetworkConfig(
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : MaxPodsConstraint.fromMap(
              (map['maxPodsPerNode'] as Map).cast<String, dynamic>(),
            ),
      secondaryPodRange: map['secondaryPodRange'] == null
          ? null
          : map['secondaryPodRange'] as String,
      subnetwork: map['subnetwork'] == null
          ? null
          : map['subnetwork'] as String,
    );
  }
}
