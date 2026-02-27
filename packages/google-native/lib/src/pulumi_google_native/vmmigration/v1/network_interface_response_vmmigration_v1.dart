// ignore_for_file: unused_element, unnecessary_cast

/// NetworkInterface represents a NIC of a VM.
class NetworkInterfaceResponseVmmigrationV1 {
  /// The external IP to define in the NIC.
  final String externalIp;

  /// The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final String internalIp;

  /// The network to connect the NIC to.
  final String network;

  /// The subnetwork to connect the NIC to.
  final String subnetwork;

  NetworkInterfaceResponseVmmigrationV1({
    required this.externalIp,
    required this.internalIp,
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    map['internalIp'] = internalIp;
    map['network'] = network;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory NetworkInterfaceResponseVmmigrationV1.fromMap(
      Map<String, dynamic> map) {
    return NetworkInterfaceResponseVmmigrationV1(
      externalIp: map['externalIp'] as String,
      internalIp: map['internalIp'] as String,
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
