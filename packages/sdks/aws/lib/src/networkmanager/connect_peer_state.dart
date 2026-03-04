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
      'bgpOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectPeerBgpOptions,
            Map<String, dynamic>
          >(bgpOptions, (value) => value.toMap()),
      'configurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectPeerConfiguration>,
            List<Map<String, dynamic>>
          >(
            configurations,
            (value) =>
                pulumi.Input.encodeList<
                  ConnectPeerConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bgpOptions: (() {
        final guardedValue = map['bgpOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectPeerBgpOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      configurations: (() {
        final guardedValue = map['configurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectPeerConfiguration>(
            guardedValue,
            (value) => ConnectPeerConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      connectAttachmentId: (() {
        final guardedValue = map['connectAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectPeerId: (() {
        final guardedValue = map['connectPeerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coreNetworkAddress: (() {
        final guardedValue = map['coreNetworkAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coreNetworkId: (() {
        final guardedValue = map['coreNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgeLocation: (() {
        final guardedValue = map['edgeLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      insideCidrBlocks: (() {
        final guardedValue = map['insideCidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      peerAddress: (() {
        final guardedValue = map['peerAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetArn: (() {
        final guardedValue = map['subnetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
