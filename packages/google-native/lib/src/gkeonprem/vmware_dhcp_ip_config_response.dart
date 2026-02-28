// ignore_for_file: unused_element, unnecessary_cast

/// Represents the network configuration required for the VMware user clusters with DHCP IP configurations.
class VmwareDhcpIpConfigResponse {
  /// enabled is a flag to mark if DHCP IP allocation is used for VMware user clusters.
  final bool enabled;

  /// Creates a new [VmwareDhcpIpConfigResponse].
  /// [enabled] enabled is a flag to mark if DHCP IP allocation is used for VMware user clusters.
  VmwareDhcpIpConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VmwareDhcpIpConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareDhcpIpConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
