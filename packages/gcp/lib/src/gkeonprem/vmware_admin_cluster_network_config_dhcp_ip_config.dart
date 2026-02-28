// ignore_for_file: unused_element, unnecessary_cast


class VmwareAdminClusterNetworkConfigDhcpIpConfig {
  /// enabled is a flag to mark if DHCP IP allocation is
  /// used for VMware admin clusters.
  final bool enabled;

  /// Creates a new [VmwareAdminClusterNetworkConfigDhcpIpConfig].
  /// [enabled] enabled is a flag to mark if DHCP IP allocation is
  VmwareAdminClusterNetworkConfigDhcpIpConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VmwareAdminClusterNetworkConfigDhcpIpConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigDhcpIpConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

