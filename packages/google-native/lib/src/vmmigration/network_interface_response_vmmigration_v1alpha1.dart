// ignore_for_file: unused_element, unnecessary_cast


/// NetworkInterface represents a NIC of a VM.
class NetworkInterfaceResponseVmmigrationV1alpha1 {
  /// The external IP to define in the NIC.
  final String externalIp;
  /// The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final String internalIp;
  /// The network to connect the NIC to.
  final String network;
  /// The subnetwork to connect the NIC to.
  final String subnetwork;

  /// Creates a new [NetworkInterfaceResponseVmmigrationV1alpha1].
  /// [externalIp] The external IP to define in the NIC.
  /// [internalIp] The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  /// [network] The network to connect the NIC to.
  /// [subnetwork] The subnetwork to connect the NIC to.
  NetworkInterfaceResponseVmmigrationV1alpha1({
    required this.externalIp,
    required this.internalIp,
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': externalIp,
      'internalIp': internalIp,
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory NetworkInterfaceResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponseVmmigrationV1alpha1(
      externalIp: map['externalIp'] as String,
      internalIp: map['internalIp'] as String,
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

