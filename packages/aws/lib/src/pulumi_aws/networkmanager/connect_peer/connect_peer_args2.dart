// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connect_peer_bgp_options/connect_peer_bgp_options.dart';

/// The set of arguments for ConnectPeer.
class ConnectPeerArgs2 {
  /// Connect peer BGP options. See bgp_options for more information.
  final Input<ConnectPeerBgpOptions>? bgpOptions;

  /// ID of the connection attachment.
  final Input<String> connectAttachmentId;

  /// Connect peer core network address.
  final Input<String>? coreNetworkAddress;

  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  final Input<List<String>>? insideCidrBlocks;

  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final Input<String> peerAddress;

  /// Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  final Input<String>? subnetArn;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ConnectPeerArgs2({
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
      map['bgpOptions'] = Input.mapOptionalInputValue<ConnectPeerBgpOptions,
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

  factory ConnectPeerArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectPeerArgs2(
      bgpOptions:
          Input.asOptionalInput<ConnectPeerBgpOptions>(map['bgpOptions']),
      connectAttachmentId: Input.asInput<String>(map['connectAttachmentId']),
      coreNetworkAddress:
          Input.asOptionalInput<String>(map['coreNetworkAddress']),
      insideCidrBlocks:
          Input.asOptionalInput<List<String>>(map['insideCidrBlocks']),
      peerAddress: Input.asInput<String>(map['peerAddress']),
      subnetArn: Input.asOptionalInput<String>(map['subnetArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
