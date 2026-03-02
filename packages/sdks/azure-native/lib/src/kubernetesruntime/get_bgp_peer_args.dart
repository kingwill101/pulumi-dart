// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_get_bgp_peer_args_doc}
/// Arguments for getBgpPeer.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_get_bgp_peer_args_doc}
class GetBgpPeerArgs {
  /// The name of the BgpPeer
  final pulumi.Input<String> bgpPeerName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetBgpPeerArgs].
  /// [bgpPeerName] The name of the BgpPeer
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetBgpPeerArgs({
    required this.bgpPeerName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpPeerName': bgpPeerName,
      'resourceUri': resourceUri,
    };
  }

  factory GetBgpPeerArgs.fromMap(Map<String, dynamic> map) {
    return GetBgpPeerArgs(
      bgpPeerName: (map['bgpPeerName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}

