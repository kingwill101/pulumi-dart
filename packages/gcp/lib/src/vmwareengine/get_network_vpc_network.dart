// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkVpcNetwork {
  /// The relative resource name of the service VPC network this VMware Engine network is attached to.
  /// For example: projects/123123/global/networks/my-network
  final String network;

  /// Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  final String type;

  /// Creates a new [GetNetworkVpcNetwork].
  /// [network] The relative resource name of the service VPC network this VMware Engine network is attached to.
  /// [type] Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  GetNetworkVpcNetwork({
    required this.network,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['type'] = type;
    return map;
  }

  factory GetNetworkVpcNetwork.fromMap(Map<String, dynamic> map) {
    return GetNetworkVpcNetwork(
      network: map['network'] as String,
      type: map['type'] as String,
    );
  }
}
