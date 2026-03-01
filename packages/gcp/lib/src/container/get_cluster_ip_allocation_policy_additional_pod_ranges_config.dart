// ignore_for_file: unused_element, unnecessary_cast


class GetClusterIpAllocationPolicyAdditionalPodRangesConfig {
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final List<String> podRangeNames;

  /// Creates a new [GetClusterIpAllocationPolicyAdditionalPodRangesConfig].
  /// [podRangeNames] Name for pod secondary ipv4 range which has the actual range defined ahead.
  GetClusterIpAllocationPolicyAdditionalPodRangesConfig({
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podRangeNames': podRangeNames,
    };
  }

  factory GetClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyAdditionalPodRangesConfig(
      podRangeNames: (map['podRangeNames'] as List).cast<String>(),
    );
  }
}

