// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayVcoRoutesRoute {
  /// List of autonomous system numbers through which BGP routing entries pass.
  final pulumi.Input<String> asPath;
  /// The creation time of the VPN destination route.
  final pulumi.Input<String> createTime;
  /// The ID of the Vpn Gateway Vco Routes.
  final pulumi.Input<String> id;
  /// The next hop of the destination route.
  final pulumi.Input<String> nextHop;
  /// The destination network segment of the destination route.
  final pulumi.Input<String> routeDest;
  /// The source CIDR block of the destination route.
  final pulumi.Input<String> source;
  /// The status of the vpn route entry. Valid values: `normal`, `published`.
  final pulumi.Input<String> status;
  /// The id of the vpn connection.
  final pulumi.Input<String> vpnConnectionId;
  /// The weight value of the destination route.
  final pulumi.Input<int> weight;

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
  const GetGatewayVcoRoutesRoute({
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
      asPath: pulumi.Input.fromValue(map['asPath'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      routeDest: pulumi.Input.fromValue(map['routeDest'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpnConnectionId: pulumi.Input.fromValue(map['vpnConnectionId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

