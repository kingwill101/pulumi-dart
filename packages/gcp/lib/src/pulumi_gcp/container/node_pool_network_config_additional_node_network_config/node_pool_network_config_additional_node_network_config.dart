// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs.
  final String? network;

  /// Name of the subnetwork where the additional interface belongs.
  final String? subnetwork;

  NodePoolNetworkConfigAdditionalNodeNetworkConfig({
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory NodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
