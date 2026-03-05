// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bgp_peers_peer.dart';

/// Result data returned by getBgpPeers.
class GetBgpPeersResult {
  final String? bgpGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetBgpPeersPeer> peers;
  final String? routerId;
  final String? status;

  /// Creates a new [GetBgpPeersResult].
  /// [bgpGroupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [peers] Required.
  /// [routerId] Optional.
  /// [status] Optional.
  GetBgpPeersResult({
    this.bgpGroupId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.peers,
    this.routerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpGroupId': ?bgpGroupId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'peers': pulumi.Input.encodeList<GetBgpPeersPeer, Map<String, dynamic>>(peers, (value) => value.toMap()),
      'routerId': ?routerId,
      'status': ?status,
    };
  }

  factory GetBgpPeersResult.fromMap(Map<String, dynamic> map) {
    return GetBgpPeersResult(
      bgpGroupId: (() { final guardedValue = map['bgpGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peers: pulumi.Input.decodeList<GetBgpPeersPeer>(map['peers']!, (value) => GetBgpPeersPeer.fromMap((value as Map).cast<String, dynamic>())),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

