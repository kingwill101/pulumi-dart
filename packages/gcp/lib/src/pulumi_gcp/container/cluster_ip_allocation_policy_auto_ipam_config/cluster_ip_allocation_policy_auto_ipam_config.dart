// ignore_for_file: unused_element, unnecessary_cast

class ClusterIpAllocationPolicyAutoIpamConfig {
  /// The flag that enables Auto IPAM on this cluster.
  final bool enabled;

  ClusterIpAllocationPolicyAutoIpamConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterIpAllocationPolicyAutoIpamConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyAutoIpamConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
