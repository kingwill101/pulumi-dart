// ignore_for_file: unused_element, unnecessary_cast


/// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
class VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork {
  /// The Id of the remote virtual network.
  final String? id;

  /// Creates a new [VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork].
  /// [id] The Id of the remote virtual network.
  VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

