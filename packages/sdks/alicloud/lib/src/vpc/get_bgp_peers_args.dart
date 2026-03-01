// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_bgp_peers_get_bgp_peers_args_doc}
/// Arguments for getBgpPeers.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_bgp_peers_get_bgp_peers_args_doc}
class GetBgpPeersArgs {
  /// The ID of the BGP group to which the BGP peer that you want to query belongs.
  final pulumi.Input<String>? bgpGroupId;
  /// A list of Bgp Peer IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the virtual border router (VBR) that is associated with the BGP peer that you want to query.
  final pulumi.Input<String>? routerId;
  /// The status of the BGP peer. Valid values: `Available`, `Deleted`, `Deleting`, `Modifying`, `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBgpPeersArgs].
  /// [bgpGroupId] The ID of the BGP group to which the BGP peer that you want to query belongs.
  /// [ids] A list of Bgp Peer IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [routerId] The ID of the virtual border router (VBR) that is associated with the BGP peer that you want to query.
  /// [status] The status of the BGP peer. Valid values: `Available`, `Deleted`, `Deleting`, `Modifying`, `Pending`.
  GetBgpPeersArgs({
    pulumi.Output<String>? bgpGroupId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? status,
  }) :
      bgpGroupId = pulumi.Input.asOptionalInput<String>(bgpGroupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpGroupId': ?bgpGroupId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'routerId': ?routerId,
      'status': ?status,
    };
  }

  factory GetBgpPeersArgs.fromMap(Map<String, dynamic> map) {
    return GetBgpPeersArgs(
      bgpGroupId: map['bgpGroupId'] == null ? null : pulumi.Output.create<String>(map['bgpGroupId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

