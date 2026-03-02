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
      asPath: (map['asPath'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      nextHop: (map['nextHop'] as String).input(),
      routeDest: (map['routeDest'] as String).input(),
      source: (map['source'] as String).input(),
      status: (map['status'] as String).input(),
      vpnConnectionId: (map['vpnConnectionId'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

