import 'package:pulumi/pulumi.dart' as pulumi;
import '../connect_peer_bgp_options/connect_peer_bgp_options.dart';
import '../connect_peer_configuration/connect_peer_configuration.dart';
import 'connect_peer_networkmanager_args.dart';

/// Manages an AWS Network Manager Connect Peer.
///
/// Use this resource to create a Connect peer in AWS Network Manager. Connect peers establish BGP sessions with your on-premises networks through Connect attachments, enabling dynamic routing between your core network and external networks.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with attachment accepter
///
///
///
/// ### Usage with a Tunnel-less Connect attachment
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.ConnectPeer` using the connect peer ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/connectPeer:ConnectPeer example connect-peer-061f3e96275db1acc
/// ```
class ConnectPeerNetworkmanager extends pulumi.CustomResource {
  /// ARN of the Connect peer.
  late final pulumi.Output<String> arn;

  /// Connect peer BGP options. See bgp_options for more information.
  late final pulumi.Output<ConnectPeerBgpOptions> bgpOptions;

  /// Configuration of the Connect peer.
  late final pulumi.Output<List<ConnectPeerConfiguration>> configurations;

  /// ID of the connection attachment.
  late final pulumi.Output<String> connectAttachmentId;

  /// ID of the Connect peer.
  late final pulumi.Output<String> connectPeerId;

  /// Connect peer core network address.
  late final pulumi.Output<String?> coreNetworkAddress;

  /// ID of a core network.
  late final pulumi.Output<String> coreNetworkId;

  /// Timestamp when the Connect peer was created.
  late final pulumi.Output<String> createdAt;

  /// Region where the peer is located.
  late final pulumi.Output<String> edgeLocation;

  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  late final pulumi.Output<List<String>?> insideCidrBlocks;

  /// Connect peer address.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> peerAddress;

  /// State of the Connect peer.
  late final pulumi.Output<String> state;

  /// Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  late final pulumi.Output<String?> subnetArn;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ConnectPeerNetworkmanager(
    String name, {
    ConnectPeerNetworkmanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/connectPeer:ConnectPeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bgpOptions = registerOutput<ConnectPeerBgpOptions>('bgpOptions');
    this.configurations =
        registerOutput<List<ConnectPeerConfiguration>>('configurations');
    this.connectAttachmentId = registerOutput<String>('connectAttachmentId');
    this.connectPeerId = registerOutput<String>('connectPeerId');
    this.coreNetworkAddress = registerOutput<String?>('coreNetworkAddress');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.createdAt = registerOutput<String>('createdAt');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.insideCidrBlocks = registerOutput<List<String>?>('insideCidrBlocks');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.state = registerOutput<String>('state');
    this.subnetArn = registerOutput<String?>('subnetArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
