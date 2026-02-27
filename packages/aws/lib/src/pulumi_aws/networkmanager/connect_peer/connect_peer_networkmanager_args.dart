// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connect_peer_bgp_options/connect_peer_bgp_options.dart';

/// The set of arguments for ConnectPeer.
class ConnectPeerNetworkmanagerArgs {
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

  ConnectPeerNetworkmanagerArgs({
    this.bgpOptions,
    required this.connectAttachmentId,
    this.coreNetworkAddress,
    this.insideCidrBlocks,
    required this.peerAddress,
    this.subnetArn,
    this.tags,
  });

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

  factory ConnectPeerNetworkmanagerArgs.fromMap(Map<String, dynamic> map) {
    return ConnectPeerNetworkmanagerArgs(
      bgpOptions: pulumi.Input.asOptionalInput<ConnectPeerBgpOptions>(
          map['bgpOptions']),
      connectAttachmentId:
          pulumi.Input.asInput<String>(map['connectAttachmentId']),
      coreNetworkAddress:
          pulumi.Input.asOptionalInput<String>(map['coreNetworkAddress']),
      insideCidrBlocks:
          pulumi.Input.asOptionalInput<List<String>>(map['insideCidrBlocks']),
      peerAddress: pulumi.Input.asInput<String>(map['peerAddress']),
      subnetArn: pulumi.Input.asOptionalInput<String>(map['subnetArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
