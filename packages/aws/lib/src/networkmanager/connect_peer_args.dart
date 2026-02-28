// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_peer_bgp_options.dart';

/// {@template pulumi_networkmanager_connect_peer_connect_peer_args_doc}
/// The set of arguments for ConnectPeer.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_connect_peer_connect_peer_args_doc}
class ConnectPeerArgs {
  /// Connect peer BGP options. See bgp_options for more information.
  final pulumi.Input<ConnectPeerBgpOptions>? bgpOptions;

  /// ID of the connection attachment.
  final pulumi.Input<String> connectAttachmentId;

  /// Connect peer core network address.
  final pulumi.Input<String>? coreNetworkAddress;

  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  final pulumi.Input<List<String>>? insideCidrBlocks;

  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> peerAddress;

  /// Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  final pulumi.Input<String>? subnetArn;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectPeerArgs].
  /// [bgpOptions] Connect peer BGP options. See bgp_options for more information.
  /// [connectAttachmentId] ID of the connection attachment.
  /// [coreNetworkAddress] Connect peer core network address.
  /// [insideCidrBlocks] Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [peerAddress] Connect peer address.
  /// [subnetArn] Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ConnectPeerArgs({
    ConnectPeerBgpOptions? bgpOptions,
    required String connectAttachmentId,
    String? coreNetworkAddress,
    List<String>? insideCidrBlocks,
    required String peerAddress,
    String? subnetArn,
    Map<String, String>? tags,
  })  : bgpOptions =
            pulumi.Input.asOptionalInput<ConnectPeerBgpOptions>(bgpOptions),
        connectAttachmentId = pulumi.Input.asInput<String>(connectAttachmentId),
        coreNetworkAddress =
            pulumi.Input.asOptionalInput<String>(coreNetworkAddress),
        insideCidrBlocks =
            pulumi.Input.asOptionalInput<List<String>>(insideCidrBlocks),
        peerAddress = pulumi.Input.asInput<String>(peerAddress),
        subnetArn = pulumi.Input.asOptionalInput<String>(subnetArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpOptionsValue = bgpOptions;
    if (bgpOptionsValue != null) {
      map['bgpOptions'] = pulumi.Input.mapOptionalInputValue<
          ConnectPeerBgpOptions,
          Map<String, dynamic>>(bgpOptionsValue, (value) => value.toMap());
    }
    map['connectAttachmentId'] = connectAttachmentId;
    final coreNetworkAddressValue = coreNetworkAddress;
    if (coreNetworkAddressValue != null) {
      map['coreNetworkAddress'] = coreNetworkAddressValue;
    }
    final insideCidrBlocksValue = insideCidrBlocks;
    if (insideCidrBlocksValue != null) {
      map['insideCidrBlocks'] = insideCidrBlocksValue;
    }
    map['peerAddress'] = peerAddress;
    final subnetArnValue = subnetArn;
    if (subnetArnValue != null) {
      map['subnetArn'] = subnetArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConnectPeerArgs.fromMap(Map<String, dynamic> map) {
    return ConnectPeerArgs(
      bgpOptions: map['bgpOptions'] == null
          ? null
          : ConnectPeerBgpOptions.fromMap(
              (map['bgpOptions'] as Map).cast<String, dynamic>()),
      connectAttachmentId: map['connectAttachmentId'] as String,
      coreNetworkAddress: map['coreNetworkAddress'] == null
          ? null
          : map['coreNetworkAddress'] as String,
      insideCidrBlocks: map['insideCidrBlocks'] == null
          ? null
          : (map['insideCidrBlocks'] as List).cast<String>(),
      peerAddress: map['peerAddress'] as String,
      subnetArn: map['subnetArn'] == null ? null : map['subnetArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
