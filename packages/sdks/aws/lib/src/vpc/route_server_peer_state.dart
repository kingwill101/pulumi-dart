// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_peer_bgp_options.dart';
import 'route_server_peer_timeouts.dart';

/// Input properties used for looking up and filtering RouteServerPeer resources.
class RouteServerPeerState {
  /// The ARN of the route server peer.
  final pulumi.Input<String>? arn;
  /// The BGP options for the peer, including ASN (Autonomous System Number) and BFD (Bidrectional Forwarding Detection) settings. Configuration block with BGP Options configuration Detailed below
  final pulumi.Input<RouteServerPeerBgpOptions>? bgpOptions;
  /// The IP address of the Elastic network interface for the route server endpoint.
  final pulumi.Input<String>? endpointEniAddress;
  /// The ID of the Elastic network interface for the route server endpoint.
  final pulumi.Input<String>? endpointEniId;
  /// The IPv4 address of the peer device.
  final pulumi.Input<String>? peerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the route server endpoint for which to create a peer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? routeServerEndpointId;
  /// The ID of the route server associated with this peer.
  final pulumi.Input<String>? routeServerId;
  /// The unique identifier of the route server peer.
  final pulumi.Input<String>? routeServerPeerId;
  /// The ID of the subnet containing the route server peer.
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<RouteServerPeerTimeouts>? timeouts;
  /// The ID of the VPC containing the route server peer.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [RouteServerPeerState].
  /// [arn] The ARN of the route server peer.
  /// [bgpOptions] The BGP options for the peer, including ASN (Autonomous System Number) and BFD (Bidrectional Forwarding Detection) settings. Configuration block with BGP Options configuration Detailed below
  /// [endpointEniAddress] The IP address of the Elastic network interface for the route server endpoint.
  /// [endpointEniId] The ID of the Elastic network interface for the route server endpoint.
  /// [peerAddress] The IPv4 address of the peer device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerEndpointId] The ID of the route server endpoint for which to create a peer.
  /// [routeServerId] The ID of the route server associated with this peer.
  /// [routeServerPeerId] The unique identifier of the route server peer.
  /// [subnetId] The ID of the subnet containing the route server peer.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC containing the route server peer.
  RouteServerPeerState({
    this.arn,
    this.bgpOptions,
    this.endpointEniAddress,
    this.endpointEniId,
    this.peerAddress,
    this.region,
    this.routeServerEndpointId,
    this.routeServerId,
    this.routeServerPeerId,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bgpOptions': ?pulumi.Input.mapOptionalInputValue<RouteServerPeerBgpOptions, Map<String, dynamic>>(bgpOptions, (value) => value.toMap()),
      'endpointEniAddress': ?endpointEniAddress,
      'endpointEniId': ?endpointEniId,
      'peerAddress': ?peerAddress,
      'region': ?region,
      'routeServerEndpointId': ?routeServerEndpointId,
      'routeServerId': ?routeServerId,
      'routeServerPeerId': ?routeServerPeerId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerPeerTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory RouteServerPeerState.fromMap(Map<String, dynamic> map) {
    return RouteServerPeerState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      bgpOptions: map['bgpOptions'] == null ? null : ((RouteServerPeerBgpOptions.fromMap((map['bgpOptions']! as Map).cast<String, dynamic>())).input()).input(),
      endpointEniAddress: map['endpointEniAddress'] == null ? null : ((map['endpointEniAddress'] as String).input()).input(),
      endpointEniId: map['endpointEniId'] == null ? null : ((map['endpointEniId'] as String).input()).input(),
      peerAddress: map['peerAddress'] == null ? null : ((map['peerAddress'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routeServerEndpointId: map['routeServerEndpointId'] == null ? null : ((map['routeServerEndpointId'] as String).input()).input(),
      routeServerId: map['routeServerId'] == null ? null : ((map['routeServerId'] as String).input()).input(),
      routeServerPeerId: map['routeServerPeerId'] == null ? null : ((map['routeServerPeerId'] as String).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((RouteServerPeerTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

