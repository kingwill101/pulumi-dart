// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterNetworkConfigDhcpIpConfig {
  /// enabled is a flag to mark if DHCP IP allocation is
  /// used for VMware admin clusters.
  final bool enabled;

  VmwareAdminClusterNetworkConfigDhcpIpConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VmwareAdminClusterNetworkConfigDhcpIpConfig.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigDhcpIpConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
