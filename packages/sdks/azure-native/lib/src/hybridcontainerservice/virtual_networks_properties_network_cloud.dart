// ignore_for_file: unused_element, unnecessary_cast


/// Infra network profile for the NetworkCloud platform
class VirtualNetworksPropertiesNetworkCloud {
  /// The ARM ID of Network Cloud Network Resource to Associate with this VirtualNetwork
  final String? networkId;

  /// Creates a new [VirtualNetworksPropertiesNetworkCloud].
  /// [networkId] The ARM ID of Network Cloud Network Resource to Associate with this VirtualNetwork
  VirtualNetworksPropertiesNetworkCloud({
    this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': ?networkId,
    };
  }

  factory VirtualNetworksPropertiesNetworkCloud.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesNetworkCloud(
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
    );
  }
}

