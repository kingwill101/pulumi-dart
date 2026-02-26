// ignore_for_file: unused_element, unnecessary_cast

/// AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfigResponse2 {
  /// Name of the VPC where the additional interface belongs
  final String network;

  /// Name of the subnetwork where the additional interface belongs
  final String subnetwork;

  AdditionalNodeNetworkConfigResponse2({
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory AdditionalNodeNetworkConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return AdditionalNodeNetworkConfigResponse2(
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
