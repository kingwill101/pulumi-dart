// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockchainnodeengine_v1_get_blockchain_node_args_doc}
/// Arguments for getBlockchainNode.
/// {@endtemplate}
/// {@macro pulumi_blockchainnodeengine_v1_get_blockchain_node_args_doc}
class GetBlockchainNodeArgs {
  final pulumi.Input<String> blockchainNodeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBlockchainNodeArgs].
  /// [blockchainNodeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBlockchainNodeArgs({
    required String blockchainNodeId,
    required String location,
    String? project,
  }) :
      blockchainNodeId = pulumi.Input.asInput<String>(blockchainNodeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockchainNodeId': blockchainNodeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBlockchainNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetBlockchainNodeArgs(
      blockchainNodeId: map['blockchainNodeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

