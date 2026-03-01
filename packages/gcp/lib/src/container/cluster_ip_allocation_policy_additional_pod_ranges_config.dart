// ignore_for_file: unused_element, unnecessary_cast

class ClusterIpAllocationPolicyAdditionalPodRangesConfig {
  /// The names of the Pod ranges to add to the cluster.
  final List<String> podRangeNames;

  /// Creates a new [ClusterIpAllocationPolicyAdditionalPodRangesConfig].
  /// [podRangeNames] The names of the Pod ranges to add to the cluster.
  ClusterIpAllocationPolicyAdditionalPodRangesConfig({
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'podRangeNames': podRangeNames};
  }

  factory ClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterIpAllocationPolicyAdditionalPodRangesConfig(
      podRangeNames: (map['podRangeNames'] as List).cast<String>(),
    );
  }
}
