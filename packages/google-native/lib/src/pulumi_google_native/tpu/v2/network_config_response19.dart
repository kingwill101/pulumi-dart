// ignore_for_file: unused_element, unnecessary_cast

/// Network related configurations.
class NetworkConfigResponse19 {
  /// Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
  final bool canIpForward;

  /// Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
  final bool enableExternalIps;

  /// The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, "default" will be used.
  final String network;

  /// The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, "default" will be used.
  final String subnetwork;

  NetworkConfigResponse19({
    required this.canIpForward,
    required this.enableExternalIps,
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canIpForward'] = canIpForward;
    map['enableExternalIps'] = enableExternalIps;
    map['network'] = network;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory NetworkConfigResponse19.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse19(
      canIpForward: map['canIpForward'] as bool,
      enableExternalIps: map['enableExternalIps'] as bool,
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
