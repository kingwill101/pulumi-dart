// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIpAllocationPolicyAdditionalIpRangesConfig {
  /// List of secondary ranges names within this subnetwork that can be used for pod IPs.
  final List<String> podIpv4RangeNames;

  /// Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  final String subnetwork;

  /// Creates a new [GetClusterIpAllocationPolicyAdditionalIpRangesConfig].
  /// [podIpv4RangeNames] List of secondary ranges names within this subnetwork that can be used for pod IPs.
  /// [subnetwork] Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  GetClusterIpAllocationPolicyAdditionalIpRangesConfig({
    required this.podIpv4RangeNames,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podIpv4RangeNames'] = podIpv4RangeNames;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyAdditionalIpRangesConfig(
      podIpv4RangeNames: (map['podIpv4RangeNames'] as List).cast<String>(),
      subnetwork: map['subnetwork'] as String,
    );
  }
}
