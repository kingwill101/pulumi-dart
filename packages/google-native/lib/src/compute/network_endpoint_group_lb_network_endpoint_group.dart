// ignore_for_file: unused_element, unnecessary_cast

/// Load balancing specific fields for network endpoint group.
class NetworkEndpointGroupLbNetworkEndpointGroup {
  /// The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  final int? defaultPort;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  final String? network;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  final String? subnetwork;

  /// Creates a new [NetworkEndpointGroupLbNetworkEndpointGroup].
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  NetworkEndpointGroupLbNetworkEndpointGroup({
    this.defaultPort,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultPortValue = defaultPort;
    if (defaultPortValue != null) {
      map['defaultPort'] = defaultPortValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory NetworkEndpointGroupLbNetworkEndpointGroup.fromMap(
      Map<String, dynamic> map) {
    return NetworkEndpointGroupLbNetworkEndpointGroup(
      defaultPort:
          map['defaultPort'] == null ? null : map['defaultPort'] as int,
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
