// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs.
  final String? network;
  /// Name of the subnetwork where the additional interface belongs.
  final String? subnetwork;

  /// Creates a new [NodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs.
  /// [subnetwork] Name of the subnetwork where the additional interface belongs.
  NodePoolNetworkConfigAdditionalNodeNetworkConfig({
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory NodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

