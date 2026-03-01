// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_bgp_peer_args_doc}
/// The set of arguments for BgpPeer.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_bgp_peer_args_doc}
class BgpPeerArgs {
  /// The name of the BgpPeer
  final pulumi.Input<String>? bgpPeerName;
  /// My ASN
  final pulumi.Input<int> myAsn;
  /// Peer Address
  final pulumi.Input<String> peerAddress;
  /// Peer ASN
  final pulumi.Input<int> peerAsn;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [BgpPeerArgs].
  /// [bgpPeerName] The name of the BgpPeer
  /// [myAsn] My ASN
  /// [peerAddress] Peer Address
  /// [peerAsn] Peer ASN
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  BgpPeerArgs({
    pulumi.Output<String>? bgpPeerName,
    required pulumi.Output<int> myAsn,
    required pulumi.Output<String> peerAddress,
    required pulumi.Output<int> peerAsn,
    required pulumi.Output<String> resourceUri,
  }) :
      bgpPeerName = pulumi.Input.asOptionalInput<String>(bgpPeerName),
      myAsn = pulumi.Input.asInput<int>(myAsn),
      peerAddress = pulumi.Input.asInput<String>(peerAddress),
      peerAsn = pulumi.Input.asInput<int>(peerAsn),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpPeerName': ?bgpPeerName,
      'myAsn': myAsn,
      'peerAddress': peerAddress,
      'peerAsn': peerAsn,
      'resourceUri': resourceUri,
    };
  }

  factory BgpPeerArgs.fromMap(Map<String, dynamic> map) {
    return BgpPeerArgs(
      bgpPeerName: map['bgpPeerName'] == null ? null : pulumi.Output.create<String>(map['bgpPeerName'] as String),
      myAsn: pulumi.Output.create<int>(map['myAsn'] as int),
      peerAddress: pulumi.Output.create<String>(map['peerAddress'] as String),
      peerAsn: pulumi.Output.create<int>(map['peerAsn'] as int),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

