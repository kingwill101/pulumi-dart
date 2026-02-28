// ignore_for_file: unused_element, unnecessary_cast

/// A network peering attached to a network resource. The message includes the peering name, peer network, peering state, and a flag indicating whether Google Compute Engine should automatically create routes for the peering.
class NetworkPeeringResponseComputeBeta {
  /// This field will be deprecated soon. Use the exchange_subnet_routes field instead. Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  final bool autoCreateRoutes;

  /// Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  final bool exchangeSubnetRoutes;

  /// Whether to export the custom routes to peer network. The default value is false.
  final bool exportCustomRoutes;

  /// Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. IPv4 special-use ranges are always exported to peers and are not controlled by this field.
  final bool exportSubnetRoutesWithPublicIp;

  /// Whether to import the custom routes from peer network. The default value is false.
  final bool importCustomRoutes;

  /// Whether subnet routes with public IP range are imported. The default value is false. IPv4 special-use ranges are always imported from peers and are not controlled by this field.
  final bool importSubnetRoutesWithPublicIp;

  /// Name of this peering. Provided by the client when the peering is created. The name must comply with RFC1035. Specifically, the name must be 1-63 characters long and match regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all the following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The URL of the peer network. It can be either full URL or partial URL. The peer network may belong to a different project. If the partial URL does not contain project, it is assumed that the peer network is in the same project as the current network.
  final String network;

  /// Maximum Transmission Unit in bytes.
  final int peerMtu;

  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY.
  final String stackType;

  /// State for the peering, either `ACTIVE` or `INACTIVE`. The peering is `ACTIVE` when there's a matching configuration in the peer network.
  final String state;

  /// Details about the current state of the peering.
  final String stateDetails;

  /// Creates a new [NetworkPeeringResponseComputeBeta].
  /// [autoCreateRoutes] This field will be deprecated soon. Use the exchange_subnet_routes field instead. Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  /// [exchangeSubnetRoutes] Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  /// [exportCustomRoutes] Whether to export the custom routes to peer network. The default value is false.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. IPv4 special-use ranges are always exported to peers and are not controlled by this field.
  /// [importCustomRoutes] Whether to import the custom routes from peer network. The default value is false.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported. The default value is false. IPv4 special-use ranges are always imported from peers and are not controlled by this field.
  /// [name] Name of this peering. Provided by the client when the peering is created. The name must comply with RFC1035. Specifically, the name must be 1-63 characters long and match regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all the following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the peer network. It can be either full URL or partial URL. The peer network may belong to a different project. If the partial URL does not contain project, it is assumed that the peer network is in the same project as the current network.
  /// [peerMtu] Maximum Transmission Unit in bytes.
  /// [stackType] Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY.
  /// [state] State for the peering, either `ACTIVE` or `INACTIVE`. The peering is `ACTIVE` when there's a matching configuration in the peer network.
  /// [stateDetails] Details about the current state of the peering.
  NetworkPeeringResponseComputeBeta({
    required this.autoCreateRoutes,
    required this.exchangeSubnetRoutes,
    required this.exportCustomRoutes,
    required this.exportSubnetRoutesWithPublicIp,
    required this.importCustomRoutes,
    required this.importSubnetRoutesWithPublicIp,
    required this.name,
    required this.network,
    required this.peerMtu,
    required this.stackType,
    required this.state,
    required this.stateDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoCreateRoutes'] = autoCreateRoutes;
    map['exchangeSubnetRoutes'] = exchangeSubnetRoutes;
    map['exportCustomRoutes'] = exportCustomRoutes;
    map['exportSubnetRoutesWithPublicIp'] = exportSubnetRoutesWithPublicIp;
    map['importCustomRoutes'] = importCustomRoutes;
    map['importSubnetRoutesWithPublicIp'] = importSubnetRoutesWithPublicIp;
    map['name'] = name;
    map['network'] = network;
    map['peerMtu'] = peerMtu;
    map['stackType'] = stackType;
    map['state'] = state;
    map['stateDetails'] = stateDetails;
    return map;
  }

  factory NetworkPeeringResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringResponseComputeBeta(
      autoCreateRoutes: map['autoCreateRoutes'] as bool,
      exchangeSubnetRoutes: map['exchangeSubnetRoutes'] as bool,
      exportCustomRoutes: map['exportCustomRoutes'] as bool,
      exportSubnetRoutesWithPublicIp:
          map['exportSubnetRoutesWithPublicIp'] as bool,
      importCustomRoutes: map['importCustomRoutes'] as bool,
      importSubnetRoutesWithPublicIp:
          map['importSubnetRoutesWithPublicIp'] as bool,
      name: map['name'] as String,
      network: map['network'] as String,
      peerMtu: map['peerMtu'] as int,
      stackType: map['stackType'] as String,
      state: map['state'] as String,
      stateDetails: map['stateDetails'] as String,
    );
  }
}
