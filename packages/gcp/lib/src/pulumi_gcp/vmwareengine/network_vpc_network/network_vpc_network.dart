// ignore_for_file: unused_element, unnecessary_cast

class NetworkVpcNetwork {
  /// (Output)
  /// The relative resource name of the service VPC network this VMware Engine network is attached to.
  /// For example: projects/123123/global/networks/my-network
  final String? network;

  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final String? type;

  NetworkVpcNetwork({
    this.network,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory NetworkVpcNetwork.fromMap(Map<String, dynamic> map) {
    return NetworkVpcNetwork(
      network: map['network'] == null ? null : map['network'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
