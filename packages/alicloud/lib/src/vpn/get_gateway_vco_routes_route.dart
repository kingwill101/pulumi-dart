// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayVcoRoutesRoute {
  /// List of autonomous system numbers through which BGP routing entries pass.
  final String asPath;
  /// The creation time of the VPN destination route.
  final String createTime;
  /// The ID of the Vpn Gateway Vco Routes.
  final String id;
  /// The next hop of the destination route.
  final String nextHop;
  /// The destination network segment of the destination route.
  final String routeDest;
  /// The source CIDR block of the destination route.
  final String source;
  /// The status of the vpn route entry. Valid values: `normal`, `published`.
  final String status;
  /// The id of the vpn connection.
  final String vpnConnectionId;
  /// The weight value of the destination route.
  final int weight;

  /// Creates a new [GetGatewayVcoRoutesRoute].
  /// [asPath] List of autonomous system numbers through which BGP routing entries pass.
  /// [createTime] The creation time of the VPN destination route.
  /// [id] The ID of the Vpn Gateway Vco Routes.
  /// [nextHop] The next hop of the destination route.
  /// [routeDest] The destination network segment of the destination route.
  /// [source] The source CIDR block of the destination route.
  /// [status] The status of the vpn route entry. Valid values: `normal`, `published`.
  /// [vpnConnectionId] The id of the vpn connection.
  /// [weight] The weight value of the destination route.
  GetGatewayVcoRoutesRoute({
    required this.asPath,
    required this.createTime,
    required this.id,
    required this.nextHop,
    required this.routeDest,
    required this.source,
    required this.status,
    required this.vpnConnectionId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPath': asPath,
      'createTime': createTime,
      'id': id,
      'nextHop': nextHop,
      'routeDest': routeDest,
      'source': source,
      'status': status,
      'vpnConnectionId': vpnConnectionId,
      'weight': weight,
    };
  }

  factory GetGatewayVcoRoutesRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayVcoRoutesRoute(
      asPath: map['asPath'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      nextHop: map['nextHop'] as String,
      routeDest: map['routeDest'] as String,
      source: map['source'] as String,
      status: map['status'] as String,
      vpnConnectionId: map['vpnConnectionId'] as String,
      weight: map['weight'] as int,
    );
  }
}

