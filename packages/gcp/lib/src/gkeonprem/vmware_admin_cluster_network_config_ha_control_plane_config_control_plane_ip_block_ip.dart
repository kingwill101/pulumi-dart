// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIp {
  /// Hostname of the machine. VM's name will be used if this field is empty.
  final String? hostname;

  /// IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  final String ip;

  /// Creates a new [VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIp].
  /// [hostname] Hostname of the machine. VM's name will be used if this field is empty.
  /// [ip] IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIp({
    this.hostname,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hostname': ?hostname, 'ip': ip};
  }

  factory VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIp.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIp(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      ip: map['ip'] as String,
    );
  }
}
