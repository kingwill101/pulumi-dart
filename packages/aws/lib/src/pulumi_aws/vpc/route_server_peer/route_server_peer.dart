import 'package:pulumi/pulumi.dart';
import '../route_server_peer_bgp_options/route_server_peer_bgp_options.dart';
import '../route_server_peer_timeouts/route_server_peer_timeouts.dart';
import 'route_server_peer_args.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server Peer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Complete Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server using the `route_server_peer_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerPeer:RouteServerPeer example rsp-12345678
/// ```
class RouteServerPeer extends CustomResource {
  /// The ARN of the route server peer.
  late final Output<String> arn;

  /// The BGP options for the peer, including ASN (Autonomous System Number) and BFD (Bidrectional Forwarding Detection) settings. Configuration block with BGP Options configuration Detailed below
  late final Output<RouteServerPeerBgpOptions> bgpOptions;

  /// The IP address of the Elastic network interface for the route server endpoint.
  late final Output<String> endpointEniAddress;

  /// The ID of the Elastic network interface for the route server endpoint.
  late final Output<String> endpointEniId;

  /// The IPv4 address of the peer device.
  late final Output<String> peerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the route server endpoint for which to create a peer.
  ///
  /// The following arguments are optional:
  late final Output<String> routeServerEndpointId;

  /// The ID of the route server associated with this peer.
  late final Output<String> routeServerId;

  /// The unique identifier of the route server peer.
  late final Output<String> routeServerPeerId;

  /// The ID of the subnet containing the route server peer.
  late final Output<String> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<RouteServerPeerTimeouts?> timeouts;

  /// The ID of the VPC containing the route server peer.
  late final Output<String> vpcId;

  RouteServerPeer(
    String name, {
    RouteServerPeerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPeer:RouteServerPeer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bgpOptions = registerOutput<RouteServerPeerBgpOptions>('bgpOptions');
    this.endpointEniAddress = registerOutput<String>('endpointEniAddress');
    this.endpointEniId = registerOutput<String>('endpointEniId');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.region = registerOutput<String>('region');
    this.routeServerEndpointId =
        registerOutput<String>('routeServerEndpointId');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.routeServerPeerId = registerOutput<String>('routeServerPeerId');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RouteServerPeerTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
