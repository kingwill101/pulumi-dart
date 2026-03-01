// ignore_for_file: unused_element, unnecessary_cast

/// Load balancing specific fields for network endpoint group.
class NetworkEndpointGroupLbNetworkEndpointGroupResponse {
  /// The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  final int defaultPort;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  final String network;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  final String subnetwork;

  /// The URL of the zone where the network endpoint group is located. [Deprecated] This field is deprecated.
  final String zone;

  /// Creates a new [NetworkEndpointGroupLbNetworkEndpointGroupResponse].
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  /// [zone] The URL of the zone where the network endpoint group is located. [Deprecated] This field is deprecated.
  NetworkEndpointGroupLbNetworkEndpointGroupResponse({
    required this.defaultPort,
    required this.network,
    required this.subnetwork,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': defaultPort,
      'network': network,
      'subnetwork': subnetwork,
      'zone': zone,
    };
  }

  factory NetworkEndpointGroupLbNetworkEndpointGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkEndpointGroupLbNetworkEndpointGroupResponse(
      defaultPort: map['defaultPort'] as int,
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
      zone: map['zone'] as String,
    );
  }
}
