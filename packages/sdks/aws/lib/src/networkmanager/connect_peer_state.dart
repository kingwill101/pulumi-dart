// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_peer_bgp_options.dart';
import 'connect_peer_configuration.dart';

/// Input properties used for looking up and filtering ConnectPeer resources.
class ConnectPeerState {
  /// ARN of the Connect peer.
  final pulumi.Input<String>? arn;
  /// Connect peer BGP options. See bgp_options for more information.
  final pulumi.Input<ConnectPeerBgpOptions>? bgpOptions;
  /// Configuration of the Connect peer.
  final pulumi.Input<List<ConnectPeerConfiguration>>? configurations;
  /// ID of the connection attachment.
  final pulumi.Input<String>? connectAttachmentId;
  /// ID of the Connect peer.
  final pulumi.Input<String>? connectPeerId;
  /// Connect peer core network address.
  final pulumi.Input<String>? coreNetworkAddress;
  /// ID of a core network.
  final pulumi.Input<String>? coreNetworkId;
  /// Timestamp when the Connect peer was created.
  final pulumi.Input<String>? createdAt;
  /// Region where the peer is located.
  final pulumi.Input<String>? edgeLocation;
  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  final pulumi.Input<List<String>>? insideCidrBlocks;
  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? peerAddress;
  /// State of the Connect peer.
  final pulumi.Input<String>? state;
  /// Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  final pulumi.Input<String>? subnetArn;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ConnectPeerState].
  /// [arn] ARN of the Connect peer.
  /// [bgpOptions] Connect peer BGP options. See bgp_options for more information.
  /// [configurations] Configuration of the Connect peer.
  /// [connectAttachmentId] ID of the connection attachment.
  /// [connectPeerId] ID of the Connect peer.
  /// [coreNetworkAddress] Connect peer core network address.
  /// [coreNetworkId] ID of a core network.
  /// [createdAt] Timestamp when the Connect peer was created.
  /// [edgeLocation] Region where the peer is located.
  /// [insideCidrBlocks] Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [peerAddress] Connect peer address.
  /// [state] State of the Connect peer.
  /// [subnetArn] Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ConnectPeerState({
    this.arn,
    this.bgpOptions,
    this.configurations,
    this.connectAttachmentId,
    this.connectPeerId,
    this.coreNetworkAddress,
    this.coreNetworkId,
    this.createdAt,
    this.edgeLocation,
    this.insideCidrBlocks,
    this.peerAddress,
    this.state,
    this.subnetArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bgpOptions': ?pulumi.Input.mapOptionalInputValue<ConnectPeerBgpOptions, Map<String, dynamic>>(bgpOptions, (value) => value.toMap()),
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<ConnectPeerConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ConnectPeerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectAttachmentId': ?connectAttachmentId,
      'connectPeerId': ?connectPeerId,
      'coreNetworkAddress': ?coreNetworkAddress,
      'coreNetworkId': ?coreNetworkId,
      'createdAt': ?createdAt,
      'edgeLocation': ?edgeLocation,
      'insideCidrBlocks': ?insideCidrBlocks,
      'peerAddress': ?peerAddress,
      'state': ?state,
      'subnetArn': ?subnetArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ConnectPeerState.fromMap(Map<String, dynamic> map) {
    return ConnectPeerState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      bgpOptions: map['bgpOptions'] == null ? null : (ConnectPeerBgpOptions.fromMap((map['bgpOptions'] as Map).cast<String, dynamic>())).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<ConnectPeerConfiguration>(map['configurations'], (value) => ConnectPeerConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectAttachmentId: map['connectAttachmentId'] == null ? null : (map['connectAttachmentId'] as String).input(),
      connectPeerId: map['connectPeerId'] == null ? null : (map['connectPeerId'] as String).input(),
      coreNetworkAddress: map['coreNetworkAddress'] == null ? null : (map['coreNetworkAddress'] as String).input(),
      coreNetworkId: map['coreNetworkId'] == null ? null : (map['coreNetworkId'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      edgeLocation: map['edgeLocation'] == null ? null : (map['edgeLocation'] as String).input(),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : ((map['insideCidrBlocks'] as List).cast<String>()).input(),
      peerAddress: map['peerAddress'] == null ? null : (map['peerAddress'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subnetArn: map['subnetArn'] == null ? null : (map['subnetArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

