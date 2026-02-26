// ignore_for_file: unused_element, unnecessary_cast

/// Load balancing specific fields for network endpoint group.
class NetworkEndpointGroupLbNetworkEndpointGroupResponse2 {
  /// The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  final int defaultPort;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  final String network;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  final String subnetwork;

  /// The URL of the zone where the network endpoint group is located. [Deprecated] This field is deprecated.
  final String zone;

  NetworkEndpointGroupLbNetworkEndpointGroupResponse2({
    required this.defaultPort,
    required this.network,
    required this.subnetwork,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultPort'] = defaultPort;
    map['network'] = network;
    map['subnetwork'] = subnetwork;
    map['zone'] = zone;
    return map;
  }

  factory NetworkEndpointGroupLbNetworkEndpointGroupResponse2.fromMap(
      Map<String, dynamic> map) {
    return NetworkEndpointGroupLbNetworkEndpointGroupResponse2(
      defaultPort: map['defaultPort'] as int,
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
      zone: map['zone'] as String,
    );
  }
}
