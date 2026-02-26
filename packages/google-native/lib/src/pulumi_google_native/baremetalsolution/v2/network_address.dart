// ignore_for_file: unused_element, unnecessary_cast

/// A network.
class NetworkAddress {
  /// IPv4 address to be assigned to the server.
  final String? address;

  /// Name of the existing network to use.
  final String? existingNetworkId;

  /// Id of the network to use, within the same ProvisioningConfig request.
  final String? networkId;

  NetworkAddress({
    this.address,
    this.existingNetworkId,
    this.networkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final existingNetworkIdValue = existingNetworkId;
    if (existingNetworkIdValue != null) {
      map['existingNetworkId'] = existingNetworkIdValue;
    }
    final networkIdValue = networkId;
    if (networkIdValue != null) {
      map['networkId'] = networkIdValue;
    }
    return map;
  }

  factory NetworkAddress.fromMap(Map<String, dynamic> map) {
    return NetworkAddress(
      address: map['address'] == null ? null : map['address'] as String,
      existingNetworkId: map['existingNetworkId'] == null
          ? null
          : map['existingNetworkId'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
    );
  }
}
