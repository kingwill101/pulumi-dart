// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs.
  final String network;
  /// Name of the subnetwork where the additional interface belongs.
  final String subnetwork;

  /// Creates a new [GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs.
  /// [subnetwork] Name of the subnetwork where the additional interface belongs.
  GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig({
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

