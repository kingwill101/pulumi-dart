// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpPeer resources.
class BgpPeerState {
  /// The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  final pulumi.Input<int>? bfdMultiHop;
  /// The ID of the BGP group.
  final pulumi.Input<String>? bgpGroupId;
  /// The name of the BGP neighbor.
  final pulumi.Input<String>? bgpPeerName;
  /// Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  final pulumi.Input<bool>? enableBfd;
  /// The IP version.
  final pulumi.Input<String>? ipVersion;
  /// The IP address of the BGP peer.
  final pulumi.Input<String>? peerIpAddress;
  /// Status of BGP neighbors.
  final pulumi.Input<String>? status;

  /// Creates a new [BgpPeerState].
  /// [bfdMultiHop] The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  /// [bgpGroupId] The ID of the BGP group.
  /// [bgpPeerName] The name of the BGP neighbor.
  /// [enableBfd] Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  /// [ipVersion] The IP version.
  /// [peerIpAddress] The IP address of the BGP peer.
  /// [status] Status of BGP neighbors.
  BgpPeerState({
    pulumi.Output<int>? bfdMultiHop,
    pulumi.Output<String>? bgpGroupId,
    pulumi.Output<String>? bgpPeerName,
    pulumi.Output<bool>? enableBfd,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? peerIpAddress,
    pulumi.Output<String>? status,
  }) :
      bfdMultiHop = pulumi.Input.asOptionalInput<int>(bfdMultiHop),
      bgpGroupId = pulumi.Input.asOptionalInput<String>(bgpGroupId),
      bgpPeerName = pulumi.Input.asOptionalInput<String>(bgpPeerName),
      enableBfd = pulumi.Input.asOptionalInput<bool>(enableBfd),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      peerIpAddress = pulumi.Input.asOptionalInput<String>(peerIpAddress),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdMultiHop': ?bfdMultiHop,
      'bgpGroupId': ?bgpGroupId,
      'bgpPeerName': ?bgpPeerName,
      'enableBfd': ?enableBfd,
      'ipVersion': ?ipVersion,
      'peerIpAddress': ?peerIpAddress,
      'status': ?status,
    };
  }

  factory BgpPeerState.fromMap(Map<String, dynamic> map) {
    return BgpPeerState(
      bfdMultiHop: map['bfdMultiHop'] == null ? null : pulumi.Output.create<int>(map['bfdMultiHop'] as int),
      bgpGroupId: map['bgpGroupId'] == null ? null : pulumi.Output.create<String>(map['bgpGroupId'] as String),
      bgpPeerName: map['bgpPeerName'] == null ? null : pulumi.Output.create<String>(map['bgpPeerName'] as String),
      enableBfd: map['enableBfd'] == null ? null : pulumi.Output.create<bool>(map['enableBfd'] as bool),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      peerIpAddress: map['peerIpAddress'] == null ? null : pulumi.Output.create<String>(map['peerIpAddress'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

