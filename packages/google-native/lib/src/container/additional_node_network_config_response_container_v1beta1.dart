// ignore_for_file: unused_element, unnecessary_cast

/// AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfigResponseContainerV1beta1 {
  /// Name of the VPC where the additional interface belongs
  final String network;

  /// Name of the subnetwork where the additional interface belongs
  final String subnetwork;

  /// Creates a new [AdditionalNodeNetworkConfigResponseContainerV1beta1].
  /// [network] Name of the VPC where the additional interface belongs
  /// [subnetwork] Name of the subnetwork where the additional interface belongs
  AdditionalNodeNetworkConfigResponseContainerV1beta1({
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory AdditionalNodeNetworkConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AdditionalNodeNetworkConfigResponseContainerV1beta1(
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
