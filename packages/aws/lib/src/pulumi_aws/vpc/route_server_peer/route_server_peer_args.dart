// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_server_peer_bgp_options/route_server_peer_bgp_options.dart';
import '../route_server_peer_timeouts/route_server_peer_timeouts.dart';

/// The set of arguments for RouteServerPeer.
class RouteServerPeerArgs {
  /// The BGP options for the peer, including ASN (Autonomous System Number) and BFD (Bidrectional Forwarding Detection) settings. Configuration block with BGP Options configuration Detailed below
  final pulumi.Input<RouteServerPeerBgpOptions> bgpOptions;

  /// The IPv4 address of the peer device.
  final pulumi.Input<String> peerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the route server endpoint for which to create a peer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> routeServerEndpointId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<RouteServerPeerTimeouts>? timeouts;

  RouteServerPeerArgs({
    required this.bgpOptions,
    required this.peerAddress,
    this.region,
    required this.routeServerEndpointId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bgpOptions'] = pulumi.Input.mapInputValue<RouteServerPeerBgpOptions,
        Map<String, dynamic>>(bgpOptions, (value) => value.toMap());
    map['peerAddress'] = peerAddress;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeServerEndpointId'] = routeServerEndpointId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          RouteServerPeerTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RouteServerPeerArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerPeerArgs(
      bgpOptions:
          pulumi.Input.asInput<RouteServerPeerBgpOptions>(map['bgpOptions']),
      peerAddress: pulumi.Input.asInput<String>(map['peerAddress']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeServerEndpointId:
          pulumi.Input.asInput<String>(map['routeServerEndpointId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<RouteServerPeerTimeouts>(
          map['timeouts']),
    );
  }
}
