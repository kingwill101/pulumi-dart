// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_bgp_peer_bgp_peer_args_doc}
/// The set of arguments for BgpPeer.
/// {@endtemplate}
/// {@macro pulumi_vpc_bgp_peer_bgp_peer_args_doc}
class BgpPeerArgs {
  /// The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  final pulumi.Input<int>? bfdMultiHop;
  /// The ID of the BGP group.
  final pulumi.Input<String> bgpGroupId;
  /// Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  final pulumi.Input<bool>? enableBfd;
  /// The IP version.
  final pulumi.Input<String>? ipVersion;
  /// The IP address of the BGP peer.
  final pulumi.Input<String>? peerIpAddress;

  /// Creates a new [BgpPeerArgs].
  /// [bfdMultiHop] The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  /// [bgpGroupId] The ID of the BGP group.
  /// [enableBfd] Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  /// [ipVersion] The IP version.
  /// [peerIpAddress] The IP address of the BGP peer.
  BgpPeerArgs({
    int? bfdMultiHop,
    required String bgpGroupId,
    bool? enableBfd,
    String? ipVersion,
    String? peerIpAddress,
  }) :
      bfdMultiHop = pulumi.Input.asOptionalInput<int>(bfdMultiHop),
      bgpGroupId = pulumi.Input.asInput<String>(bgpGroupId),
      enableBfd = pulumi.Input.asOptionalInput<bool>(enableBfd),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      peerIpAddress = pulumi.Input.asOptionalInput<String>(peerIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdMultiHop': ?bfdMultiHop,
      'bgpGroupId': bgpGroupId,
      'enableBfd': ?enableBfd,
      'ipVersion': ?ipVersion,
      'peerIpAddress': ?peerIpAddress,
    };
  }

  factory BgpPeerArgs.fromMap(Map<String, dynamic> map) {
    return BgpPeerArgs(
      bfdMultiHop: map['bfdMultiHop'] == null ? null : map['bfdMultiHop'] as int,
      bgpGroupId: map['bgpGroupId'] as String,
      enableBfd: map['enableBfd'] == null ? null : map['enableBfd'] as bool,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      peerIpAddress: map['peerIpAddress'] == null ? null : map['peerIpAddress'] as String,
    );
  }
}

