// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIpAllocationPolicyAutoIpamConfig {
  /// The flag that enables Auto IPAM on this cluster.
  final bool enabled;

  /// Creates a new [GetClusterIpAllocationPolicyAutoIpamConfig].
  /// [enabled] The flag that enables Auto IPAM on this cluster.
  GetClusterIpAllocationPolicyAutoIpamConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterIpAllocationPolicyAutoIpamConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterIpAllocationPolicyAutoIpamConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
