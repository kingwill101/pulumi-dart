// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_server_bgp_connection_route_server_bgp_connection_args_doc}
/// The set of arguments for RouteServerBgpConnection.
/// {@endtemplate}
/// {@macro pulumi_network_route_server_bgp_connection_route_server_bgp_connection_args_doc}
class RouteServerBgpConnectionArgs {
  /// The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<int> peerAsn;
  /// The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> peerIp;
  /// The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> routeServerId;

  /// Creates a new [RouteServerBgpConnectionArgs].
  /// [name] The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [peerAsn] The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [peerIp] The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [routeServerId] The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  RouteServerBgpConnectionArgs({
    String? name,
    required int peerAsn,
    required String peerIp,
    required String routeServerId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      peerAsn = pulumi.Input.asInput<int>(peerAsn),
      peerIp = pulumi.Input.asInput<String>(peerIp),
      routeServerId = pulumi.Input.asInput<String>(routeServerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'peerAsn': peerAsn,
      'peerIp': peerIp,
      'routeServerId': routeServerId,
    };
  }

  factory RouteServerBgpConnectionArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerBgpConnectionArgs(
      name: map['name'] == null ? null : map['name'] as String,
      peerAsn: map['peerAsn'] as int,
      peerIp: map['peerIp'] as String,
      routeServerId: map['routeServerId'] as String,
    );
  }
}

