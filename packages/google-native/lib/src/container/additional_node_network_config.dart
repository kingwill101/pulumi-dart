// ignore_for_file: unused_element, unnecessary_cast

/// AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs
  final String? network;

  /// Name of the subnetwork where the additional interface belongs
  final String? subnetwork;

  /// Creates a new [AdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs
  /// [subnetwork] Name of the subnetwork where the additional interface belongs
  AdditionalNodeNetworkConfig({
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

  factory AdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalNodeNetworkConfig(
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
