// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_peer_connections_get_peer_connections_args_doc}
/// Arguments for getPeerConnections.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_peer_connections_get_peer_connections_args_doc}
class GetPeerConnectionsArgs {
  /// A list of PeerConnection IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by PeerConnection name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the resource.
  final pulumi.Input<String>? peerConnectionName;
  /// The status of the resource. Valid values: `Accepting`, `Activated`, `Creating`, `Deleted`, `Deleting`, `Expired`, `Rejected`, `Updating`.
  final pulumi.Input<String>? status;
  /// The ID of the requester VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetPeerConnectionsArgs].
  /// [ids] A list of PeerConnection IDs.
  /// [nameRegex] A regex string to filter results by PeerConnection name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [peerConnectionName] The name of the resource.
  /// [status] The status of the resource. Valid values: `Accepting`, `Activated`, `Creating`, `Deleted`, `Deleting`, `Expired`, `Rejected`, `Updating`.
  /// [vpcId] The ID of the requester VPC.
  GetPeerConnectionsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.peerConnectionName,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'peerConnectionName': ?peerConnectionName,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetPeerConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPeerConnectionsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      peerConnectionName: map['peerConnectionName'] == null ? null : (map['peerConnectionName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

