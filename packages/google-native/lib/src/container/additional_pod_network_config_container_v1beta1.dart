// ignore_for_file: unused_element, unnecessary_cast

import 'max_pods_constraint_container_v1beta1.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfigContainerV1beta1 {
  /// The maximum number of pods per node which use this pod network
  final MaxPodsConstraintContainerV1beta1? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final String? secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs
  final String? subnetwork;

  /// Creates a new [AdditionalPodNetworkConfigContainerV1beta1].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs
  AdditionalPodNetworkConfigContainerV1beta1({
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

  factory AdditionalPodNetworkConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdditionalPodNetworkConfigContainerV1beta1(
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : MaxPodsConstraintContainerV1beta1.fromMap(
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
