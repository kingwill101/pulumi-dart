// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPbrRouteEntriesEntry {
  /// The creation time of the VPN Pbr Route Entry.
  final pulumi.Input<String> createTime;

  /// The id of the vpn pbr route entry. The value formats as `&lt;vpn_gateway_id&gt;:&lt;next_hop&gt;:&lt;route_source&gt;:&lt;route_dest&gt;`.
  final pulumi.Input<String> id;

  /// The next hop of the policy-based route.
  final pulumi.Input<String> nextHop;

  /// The destination CIDR block of the policy-based route.
  final pulumi.Input<String> routeDest;

  /// The source CIDR block of the policy-based route.
  final pulumi.Input<String> routeSource;

  /// The status of the VPN Pbr Route Entry.
  final pulumi.Input<String> status;

  /// The ID of the VPN gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// The weight of the policy-based route. Valid values: 0 and 100.
  final pulumi.Input<int> weight;

  /// Creates a new [GetPbrRouteEntriesEntry].
  /// [createTime] The creation time of the VPN Pbr Route Entry.
  /// [id] The id of the vpn pbr route entry. The value formats as `&lt;vpn_gateway_id&gt;:&lt;next_hop&gt;:&lt;route_source&gt;:&lt;route_dest&gt;`.
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      routeDest: pulumi.Input.fromValue(map['routeDest'] as String),
      routeSource: pulumi.Input.fromValue(map['routeSource'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
