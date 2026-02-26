import 'package:pulumi/pulumi.dart';
import 'router_args3.dart';
import 'router_bgp_peer_response3.dart';
import 'router_bgp_response3.dart';
import 'router_interface_response3.dart';
import 'router_md5_authentication_key_response3.dart';
import 'router_nat_response3.dart';

/// Creates a Router resource in the specified project and region using the data included in the request.
class Router3 extends CustomResource {
  /// BGP information specific to this router.
  late final Output<RouterBgpResponse3> bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  late final Output<List<RouterBgpPeerResponse3>> bgpPeers;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  late final Output<bool> encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  late final Output<List<RouterInterfaceResponse3>> interfaces;

  /// Type of resource. Always compute#router for routers.
  late final Output<String> kind;

  /// Keys used for MD5 authentication.
  late final Output<List<RouterMd5AuthenticationKeyResponse3>>
      md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// A list of NAT services created in this router.
  late final Output<List<RouterNatResponse3>> nats;

  /// URI of the network to which this router belongs.
  late final Output<String> network;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  Router3(
    String name, {
    RouterArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:Router',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bgp = Output.createUnknown<RouterBgpResponse3>();
    this.bgpPeers = Output.createUnknown<List<RouterBgpPeerResponse3>>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.encryptedInterconnectRouter = Output.createUnknown<bool>();
    this.interfaces = Output.createUnknown<List<RouterInterfaceResponse3>>();
    this.kind = Output.createUnknown<String>();
    this.md5AuthenticationKeys =
        Output.createUnknown<List<RouterMd5AuthenticationKeyResponse3>>();
    this.name = Output.createUnknown<String>();
    this.nats = Output.createUnknown<List<RouterNatResponse3>>();
    this.network = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
  }
}
