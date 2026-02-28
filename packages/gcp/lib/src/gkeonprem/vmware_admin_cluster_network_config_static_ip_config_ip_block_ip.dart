// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp {
  /// Hostname of the machine. VM's name will be used if this field is empty.
  final String? hostname;

  /// IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  final String ip;

  /// Creates a new [VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp].
  /// [hostname] Hostname of the machine. VM's name will be used if this field is empty.
  /// [ip] IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp({
    this.hostname,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    map['ip'] = ip;
    return map;
  }

  factory VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      ip: map['ip'] as String,
    );
  }
}
