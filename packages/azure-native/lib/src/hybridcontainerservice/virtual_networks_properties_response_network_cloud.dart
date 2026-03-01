// ignore_for_file: unused_element, unnecessary_cast


/// Infra network profile for the NetworkCloud platform
class VirtualNetworksPropertiesResponseNetworkCloud {
  /// The ARM ID of Network Cloud Network Resource to Associate with this VirtualNetwork
  final String? networkId;

  /// Creates a new [VirtualNetworksPropertiesResponseNetworkCloud].
  /// [networkId] The ARM ID of Network Cloud Network Resource to Associate with this VirtualNetwork
  VirtualNetworksPropertiesResponseNetworkCloud({
    this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': ?networkId,
    };
  }

  factory VirtualNetworksPropertiesResponseNetworkCloud.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseNetworkCloud(
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
    );
  }
}

