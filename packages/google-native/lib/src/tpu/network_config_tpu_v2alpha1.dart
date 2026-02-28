// ignore_for_file: unused_element, unnecessary_cast


/// Network related configurations.
class NetworkConfigTpuV2alpha1 {
  /// Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
  final bool? canIpForward;
  /// Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
  final bool? enableExternalIps;
  /// The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, "default" will be used.
  final String? network;
  /// The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, "default" will be used.
  final String? subnetwork;

  /// Creates a new [NetworkConfigTpuV2alpha1].
  /// [canIpForward] Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
  /// [enableExternalIps] Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
  /// [network] The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, "default" will be used.
  /// [subnetwork] The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, "default" will be used.
  NetworkConfigTpuV2alpha1({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canIpForward': ?canIpForward,
      'enableExternalIps': ?enableExternalIps,
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkConfigTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigTpuV2alpha1(
      canIpForward: map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      enableExternalIps: map['enableExternalIps'] == null ? null : map['enableExternalIps'] as bool,
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

