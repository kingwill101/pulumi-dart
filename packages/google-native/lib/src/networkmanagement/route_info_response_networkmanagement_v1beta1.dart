// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine route.
class RouteInfoResponseNetworkmanagementV1beta1 {
  /// Destination IP range of the route.
  final String destIpRange;

  /// Destination port ranges of the route. Policy based routes only.
  final List<String> destPortRanges;

  /// Name of a route.
  final String displayName;

  /// Instance tags of the route.
  final List<String> instanceTags;

  /// URI of a NCC Hub. NCC_HUB routes only.
  final String nccHubUri;

  /// URI of a NCC Spoke. NCC_HUB routes only.
  final String nccSpokeUri;

  /// URI of a Compute Engine network. NETWORK routes only.
  final String networkUri;

  /// Next hop of the route.
  final String nextHop;

  /// Type of next hop.
  final String nextHopType;

  /// Priority of the route.
  final int priority;

  /// Protocols of the route. Policy based routes only.
  final List<String> protocols;

  /// Indicates where route is applicable.
  final String routeScope;

  /// Type of route.
  final String routeType;

  /// Source IP address range of the route. Policy based routes only.
  final String srcIpRange;

  /// Source port ranges of the route. Policy based routes only.
  final List<String> srcPortRanges;

  /// URI of a route. Dynamic, peering static and peering dynamic routes do not have an URI. Advertised route from Google Cloud VPC to on-premises network also does not have an URI.
  final String uri;

  /// Creates a new [RouteInfoResponseNetworkmanagementV1beta1].
  /// [destIpRange] Destination IP range of the route.
  /// [destPortRanges] Destination port ranges of the route. Policy based routes only.
  /// [displayName] Name of a route.
  /// [instanceTags] Instance tags of the route.
  /// [nccHubUri] URI of a NCC Hub. NCC_HUB routes only.
  /// [nccSpokeUri] URI of a NCC Spoke. NCC_HUB routes only.
  /// [networkUri] URI of a Compute Engine network. NETWORK routes only.
  /// [nextHop] Next hop of the route.
  /// [nextHopType] Type of next hop.
  /// [priority] Priority of the route.
  /// [protocols] Protocols of the route. Policy based routes only.
  /// [routeScope] Indicates where route is applicable.
  /// [routeType] Type of route.
  /// [srcIpRange] Source IP address range of the route. Policy based routes only.
  /// [srcPortRanges] Source port ranges of the route. Policy based routes only.
  /// [uri] URI of a route. Dynamic, peering static and peering dynamic routes do not have an URI. Advertised route from Google Cloud VPC to on-premises network also does not have an URI.
  RouteInfoResponseNetworkmanagementV1beta1({
    required this.destIpRange,
    required this.destPortRanges,
    required this.displayName,
    required this.instanceTags,
    required this.nccHubUri,
    required this.nccSpokeUri,
    required this.networkUri,
    required this.nextHop,
    required this.nextHopType,
    required this.priority,
    required this.protocols,
    required this.routeScope,
    required this.routeType,
    required this.srcIpRange,
    required this.srcPortRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRange': destIpRange,
      'destPortRanges': destPortRanges,
      'displayName': displayName,
      'instanceTags': instanceTags,
      'nccHubUri': nccHubUri,
      'nccSpokeUri': nccSpokeUri,
      'networkUri': networkUri,
      'nextHop': nextHop,
      'nextHopType': nextHopType,
      'priority': priority,
      'protocols': protocols,
      'routeScope': routeScope,
      'routeType': routeType,
      'srcIpRange': srcIpRange,
      'srcPortRanges': srcPortRanges,
      'uri': uri,
    };
  }

  factory RouteInfoResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouteInfoResponseNetworkmanagementV1beta1(
      destIpRange: map['destIpRange'] as String,
      destPortRanges: (map['destPortRanges'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      instanceTags: (map['instanceTags'] as List).cast<String>(),
      nccHubUri: map['nccHubUri'] as String,
      nccSpokeUri: map['nccSpokeUri'] as String,
      networkUri: map['networkUri'] as String,
      nextHop: map['nextHop'] as String,
      nextHopType: map['nextHopType'] as String,
      priority: map['priority'] as int,
      protocols: (map['protocols'] as List).cast<String>(),
      routeScope: map['routeScope'] as String,
      routeType: map['routeType'] as String,
      srcIpRange: map['srcIpRange'] as String,
      srcPortRanges: (map['srcPortRanges'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
