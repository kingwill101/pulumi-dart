import 'package:pulumi/pulumi.dart' hide Config;
import 'router_args.dart';
import 'router_bgp_peer_response.dart';
import 'router_bgp_response.dart';
import 'router_interface_response.dart';
import 'router_md5_authentication_key_response.dart';
import 'router_nat_response.dart';

/// Creates a Router resource in the specified project and region using the data included in the request.
class Router extends CustomResource {
  /// BGP information specific to this router.
  late final Output<RouterBgpResponse> bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  late final Output<List<RouterBgpPeerResponse>> bgpPeers;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  late final Output<bool> encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  late final Output<List<RouterInterfaceResponse>> interfaces;

  /// Type of resource. Always compute#router for routers.
  late final Output<String> kind;

  /// Keys used for MD5 authentication.
  late final Output<List<RouterMd5AuthenticationKeyResponse>>
      md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// A list of NAT services created in this router.
  late final Output<List<RouterNatResponse>> nats;

  /// URI of the network to which this router belongs.
  late final Output<String> network;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  Router(
    String name, {
    RouterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:Router',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bgp = registerOutput<RouterBgpResponse>('bgp');
    this.bgpPeers = registerOutput<List<RouterBgpPeerResponse>>('bgpPeers');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.encryptedInterconnectRouter =
        registerOutput<bool>('encryptedInterconnectRouter');
    this.interfaces =
        registerOutput<List<RouterInterfaceResponse>>('interfaces');
    this.kind = registerOutput<String>('kind');
    this.md5AuthenticationKeys =
        registerOutput<List<RouterMd5AuthenticationKeyResponse>>(
            'md5AuthenticationKeys');
    this.name = registerOutput<String>('name');
    this.nats = registerOutput<List<RouterNatResponse>>('nats');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
