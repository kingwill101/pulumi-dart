// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_peer_bgp_options.dart';

/// {@template pulumi_networkmanager_connect_peer_connect_peer_args_doc}
/// The set of arguments for ConnectPeer.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_connect_peer_connect_peer_args_doc}
class ConnectPeerArgs {
  /// Connect peer BGP options. See bgpOptions for more information.
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
  /// Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectPeerArgs].
  /// [bgpOptions] Connect peer BGP options. See bgpOptions for more information.
  /// [connectAttachmentId] ID of the connection attachment.
  /// [coreNetworkAddress] Connect peer core network address.
  /// [insideCidrBlocks] Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [peerAddress] Connect peer address.
  /// [subnetArn] Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [tags] Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ConnectPeerArgs({
    this.bgpOptions,
    required this.connectAttachmentId,
    this.coreNetworkAddress,
    this.insideCidrBlocks,
    required this.peerAddress,
    this.subnetArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpOptions': ?pulumi.Input.mapOptionalInputValue<ConnectPeerBgpOptions, Map<String, dynamic>>(bgpOptions, (value) => value.toMap()),
      'connectAttachmentId': connectAttachmentId,
      'coreNetworkAddress': ?coreNetworkAddress,
      'insideCidrBlocks': ?insideCidrBlocks,
      'peerAddress': peerAddress,
      'subnetArn': ?subnetArn,
      'tags': ?tags,
    };
  }

  factory ConnectPeerArgs.fromMap(Map<String, dynamic> map) {
    return ConnectPeerArgs(
      bgpOptions: (() { final guardedValue = map['bgpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectPeerBgpOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectAttachmentId: pulumi.Input.fromValue(map['connectAttachmentId'] as String),
      coreNetworkAddress: (() { final guardedValue = map['coreNetworkAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insideCidrBlocks: (() { final guardedValue = map['insideCidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      peerAddress: pulumi.Input.fromValue(map['peerAddress'] as String),
      subnetArn: (() { final guardedValue = map['subnetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
