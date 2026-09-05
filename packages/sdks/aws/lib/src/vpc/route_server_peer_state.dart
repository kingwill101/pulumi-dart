// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_peer_bgp_options.dart';
import 'route_server_peer_timeouts.dart';

/// Input properties used for looking up and filtering RouteServerPeer resources.
class RouteServerPeerState {
  /// The ARN of the route server peer.
  final pulumi.Input<String?>? arn;
  /// The BGP options for the peer, including ASN (Autonomous System Number) and BFD (Bidrectional Forwarding Detection) settings. Configuration block with BGP Options configuration Detailed below
  final pulumi.Input<RouteServerPeerBgpOptions?>? bgpOptions;
  /// The IP address of the Elastic network interface for the route server endpoint.
  final pulumi.Input<String?>? endpointEniAddress;
  /// The ID of the Elastic network interface for the route server endpoint.
  final pulumi.Input<String?>? endpointEniId;
  /// The IPv4 address of the peer device.
  final pulumi.Input<String?>? peerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the route server endpoint for which to create a peer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? routeServerEndpointId;
  /// The ID of the route server associated with this peer.
  final pulumi.Input<String?>? routeServerId;
  /// The unique identifier of the route server peer.
  final pulumi.Input<String?>? routeServerPeerId;
  /// The ID of the subnet containing the route server peer.
  final pulumi.Input<String?>? subnetId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<RouteServerPeerTimeouts?>? timeouts;
  /// The ID of the VPC containing the route server peer.
  final pulumi.Input<String?>? vpcId;

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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC containing the route server peer.
  const RouteServerPeerState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpOptions: (() { final guardedValue = map['bgpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteServerPeerBgpOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointEniAddress: (() { final guardedValue = map['endpointEniAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointEniId: (() { final guardedValue = map['endpointEniId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerEndpointId: (() { final guardedValue = map['routeServerEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerId: (() { final guardedValue = map['routeServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerPeerId: (() { final guardedValue = map['routeServerPeerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteServerPeerTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
