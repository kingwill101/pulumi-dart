// ignore_for_file: unused_element, unnecessary_cast


class GetPbrRouteEntriesEntry {
  /// The creation time of the VPN Pbr Route Entry.
  final String createTime;
  /// The id of the vpn pbr route entry. The value formats as `<vpn_gateway_id>:<next_hop>:<route_source>:<route_dest>`.
  final String id;
  /// The next hop of the policy-based route.
  final String nextHop;
  /// The destination CIDR block of the policy-based route.
  final String routeDest;
  /// The source CIDR block of the policy-based route.
  final String routeSource;
  /// The status of the VPN Pbr Route Entry.
  final String status;
  /// The ID of the VPN gateway.
  final String vpnGatewayId;
  /// The weight of the policy-based route. Valid values: 0 and 100.
  final int weight;

  /// Creates a new [GetPbrRouteEntriesEntry].
  /// [createTime] The creation time of the VPN Pbr Route Entry.
  /// [id] The id of the vpn pbr route entry. The value formats as `<vpn_gateway_id>:<next_hop>:<route_source>:<route_dest>`.
  /// [nextHop] The next hop of the policy-based route.
  /// [routeDest] The destination CIDR block of the policy-based route.
  /// [routeSource] The source CIDR block of the policy-based route.
  /// [status] The status of the VPN Pbr Route Entry.
  /// [vpnGatewayId] The ID of the VPN gateway.
  /// [weight] The weight of the policy-based route. Valid values: 0 and 100.
  GetPbrRouteEntriesEntry({
    required this.createTime,
    required this.id,
    required this.nextHop,
    required this.routeDest,
    required this.routeSource,
    required this.status,
    required this.vpnGatewayId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'nextHop': nextHop,
      'routeDest': routeDest,
      'routeSource': routeSource,
      'status': status,
      'vpnGatewayId': vpnGatewayId,
      'weight': weight,
    };
  }

  factory GetPbrRouteEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetPbrRouteEntriesEntry(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      nextHop: map['nextHop'] as String,
      routeDest: map['routeDest'] as String,
      routeSource: map['routeSource'] as String,
      status: map['status'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
      weight: map['weight'] as int,
    );
  }
}

