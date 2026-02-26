// ignore_for_file: unused_element, unnecessary_cast

/// NetworkInterface represents a NIC of a VM.
class NetworkInterface7 {
  /// The external IP to define in the NIC.
  final String? externalIp;

  /// The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final String? internalIp;

  /// The network to connect the NIC to.
  final String? network;

  /// The subnetwork to connect the NIC to.
  final String? subnetwork;

  NetworkInterface7({
    this.externalIp,
    this.internalIp,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalIpValue = externalIp;
    if (externalIpValue != null) {
      map['externalIp'] = externalIpValue;
    }
    final internalIpValue = internalIp;
    if (internalIpValue != null) {
      map['internalIp'] = internalIpValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory NetworkInterface7.fromMap(Map<String, dynamic> map) {
    return NetworkInterface7(
      externalIp:
          map['externalIp'] == null ? null : map['externalIp'] as String,
      internalIp:
          map['internalIp'] == null ? null : map['internalIp'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
