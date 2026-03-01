// ignore_for_file: unused_element, unnecessary_cast


/// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
class VirtualNetworkBgpCommunitiesResponse {
  /// The BGP community associated with the region of the virtual network.
  final String regionalCommunity;
  /// The BGP community associated with the virtual network.
  final String virtualNetworkCommunity;

  /// Creates a new [VirtualNetworkBgpCommunitiesResponse].
  /// [regionalCommunity] The BGP community associated with the region of the virtual network.
  /// [virtualNetworkCommunity] The BGP community associated with the virtual network.
  VirtualNetworkBgpCommunitiesResponse({
    required this.regionalCommunity,
    required this.virtualNetworkCommunity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionalCommunity': regionalCommunity,
      'virtualNetworkCommunity': virtualNetworkCommunity,
    };
  }

  factory VirtualNetworkBgpCommunitiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkBgpCommunitiesResponse(
      regionalCommunity: map['regionalCommunity'] as String,
      virtualNetworkCommunity: map['virtualNetworkCommunity'] as String,
    );
  }
}

