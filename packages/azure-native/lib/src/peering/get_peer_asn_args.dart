// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_peer_asn_args_doc}
/// Arguments for getPeerAsn.
/// {@endtemplate}
/// {@macro pulumi_peering_get_peer_asn_args_doc}
class GetPeerAsnArgs {
  /// The peer ASN name.
  final pulumi.Input<String> peerAsnName;

  /// Creates a new [GetPeerAsnArgs].
  /// [peerAsnName] The peer ASN name.
  GetPeerAsnArgs({
    required String peerAsnName,
  }) :
      peerAsnName = pulumi.Input.asInput<String>(peerAsnName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAsnName': peerAsnName,
    };
  }

  factory GetPeerAsnArgs.fromMap(Map<String, dynamic> map) {
    return GetPeerAsnArgs(
      peerAsnName: map['peerAsnName'] as String,
    );
  }
}

