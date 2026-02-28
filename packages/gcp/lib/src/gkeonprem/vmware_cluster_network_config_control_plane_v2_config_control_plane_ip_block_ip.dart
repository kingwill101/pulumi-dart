// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp {
  /// Hostname of the machine. VM's name will be used if this field is empty.
  final String? hostname;

  /// IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  final String? ip;

  /// Creates a new [VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp].
  /// [hostname] Hostname of the machine. VM's name will be used if this field is empty.
  /// [ip] IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp({
    this.hostname,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final ipValue = ip;
    if (ipValue != null) {
      map['ip'] = ipValue;
    }
    return map;
  }

  factory VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
    );
  }
}
