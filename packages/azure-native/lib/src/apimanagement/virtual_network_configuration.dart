// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of a virtual network to which API Management service is deployed.
class VirtualNetworkConfiguration {
  /// The full resource ID of a subnet in a virtual network to deploy the API Management service in.
  final String? subnetResourceId;

  /// Creates a new [VirtualNetworkConfiguration].
  /// [subnetResourceId] The full resource ID of a subnet in a virtual network to deploy the API Management service in.
  VirtualNetworkConfiguration({
    this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetResourceId': ?subnetResourceId,
    };
  }

  factory VirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfiguration(
      subnetResourceId: map['subnetResourceId'] == null ? null : map['subnetResourceId'] as String,
    );
  }
}

