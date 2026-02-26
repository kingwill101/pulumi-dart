// ignore_for_file: unused_element, unnecessary_cast

/// A network.
class NetworkAddressResponse {
  /// IPv4 address to be assigned to the server.
  final String address;

  /// Name of the existing network to use.
  final String existingNetworkId;

  /// Id of the network to use, within the same ProvisioningConfig request.
  final String networkId;

  NetworkAddressResponse({
    required this.address,
    required this.existingNetworkId,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['existingNetworkId'] = existingNetworkId;
    map['networkId'] = networkId;
    return map;
  }

  factory NetworkAddressResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAddressResponse(
      address: map['address'] as String,
      existingNetworkId: map['existingNetworkId'] as String,
      networkId: map['networkId'] as String,
    );
  }
}
