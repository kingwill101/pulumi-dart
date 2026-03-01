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
    pulumi.Output<String>? arn,
    pulumi.Output<ConnectPeerBgpOptions>? bgpOptions,
    pulumi.Output<List<ConnectPeerConfiguration>>? configurations,
    pulumi.Output<String>? connectAttachmentId,
    pulumi.Output<String>? connectPeerId,
    pulumi.Output<String>? coreNetworkAddress,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? edgeLocation,
    pulumi.Output<List<String>>? insideCidrBlocks,
    pulumi.Output<String>? peerAddress,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subnetArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bgpOptions = pulumi.Input.asOptionalInput<ConnectPeerBgpOptions>(bgpOptions),
      configurations = pulumi.Input.asOptionalInput<List<ConnectPeerConfiguration>>(configurations),
      connectAttachmentId = pulumi.Input.asOptionalInput<String>(connectAttachmentId),
      connectPeerId = pulumi.Input.asOptionalInput<String>(connectPeerId),
      coreNetworkAddress = pulumi.Input.asOptionalInput<String>(coreNetworkAddress),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      edgeLocation = pulumi.Input.asOptionalInput<String>(edgeLocation),
      insideCidrBlocks = pulumi.Input.asOptionalInput<List<String>>(insideCidrBlocks),
      peerAddress = pulumi.Input.asOptionalInput<String>(peerAddress),
      state = pulumi.Input.asOptionalInput<String>(state),
      subnetArn = pulumi.Input.asOptionalInput<String>(subnetArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bgpOptions: map['bgpOptions'] == null ? null : pulumi.Output.create<ConnectPeerBgpOptions>(ConnectPeerBgpOptions.fromMap((map['bgpOptions'] as Map).cast<String, dynamic>())),
      configurations: map['configurations'] == null ? null : pulumi.Output.create<List<ConnectPeerConfiguration>>(pulumi.Input.decodeList<ConnectPeerConfiguration>(map['configurations'], (value) => ConnectPeerConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      connectAttachmentId: map['connectAttachmentId'] == null ? null : pulumi.Output.create<String>(map['connectAttachmentId'] as String),
      connectPeerId: map['connectPeerId'] == null ? null : pulumi.Output.create<String>(map['connectPeerId'] as String),
      coreNetworkAddress: map['coreNetworkAddress'] == null ? null : pulumi.Output.create<String>(map['coreNetworkAddress'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      edgeLocation: map['edgeLocation'] == null ? null : pulumi.Output.create<String>(map['edgeLocation'] as String),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['insideCidrBlocks'] as List).cast<String>()),
      peerAddress: map['peerAddress'] == null ? null : pulumi.Output.create<String>(map['peerAddress'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subnetArn: map['subnetArn'] == null ? null : pulumi.Output.create<String>(map['subnetArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

