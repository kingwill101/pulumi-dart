// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_bgp_peer_args_doc}
/// The set of arguments for BgpPeer.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_bgp_peer_args_doc}
class BgpPeerArgs {
  /// The name of the BgpPeer
  final pulumi.Input<String?>? bgpPeerName;
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
  const BgpPeerArgs({
    this.bgpPeerName,
    required this.myAsn,
    required this.peerAddress,
    required this.peerAsn,
    required this.resourceUri,
  });

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
      bgpPeerName: (() { final guardedValue = map['bgpPeerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      myAsn: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['myAsn'])),
      peerAddress: pulumi.Input.fromValue(map['peerAddress'] as String),
      peerAsn: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['peerAsn'])),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
