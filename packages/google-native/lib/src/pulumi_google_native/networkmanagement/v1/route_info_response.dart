// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine route.
class RouteInfoResponse {
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

  RouteInfoResponse({
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
    final map = <String, dynamic>{};
    map['destIpRange'] = destIpRange;
    map['destPortRanges'] = destPortRanges;
    map['displayName'] = displayName;
    map['instanceTags'] = instanceTags;
    map['nccHubUri'] = nccHubUri;
    map['nccSpokeUri'] = nccSpokeUri;
    map['networkUri'] = networkUri;
    map['nextHop'] = nextHop;
    map['nextHopType'] = nextHopType;
    map['priority'] = priority;
    map['protocols'] = protocols;
    map['routeScope'] = routeScope;
    map['routeType'] = routeType;
    map['srcIpRange'] = srcIpRange;
    map['srcPortRanges'] = srcPortRanges;
    map['uri'] = uri;
    return map;
  }

  factory RouteInfoResponse.fromMap(Map<String, dynamic> map) {
    return RouteInfoResponse(
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
