// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../blockchain_nodes_ethereum_details/blockchain_nodes_ethereum_details.dart';

/// The set of arguments for BlockchainNodes.
class BlockchainNodesArgs {
  /// ID of the requesting object.
  final pulumi.Input<String> blockchainNodeId;

  /// User-provided key-value pairs
  /// Possible values are: `ETHEREUM`.
  final pulumi.Input<String>? blockchainType;

  /// User-provided key-value pairs
  /// Structure is documented below.
  final pulumi.Input<BlockchainNodesEthereumDetails>? ethereumDetails;

  /// User-provided key-value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location of Blockchain Node being created.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  BlockchainNodesArgs({
    required this.blockchainNodeId,
    this.blockchainType,
    this.ethereumDetails,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockchainNodeId'] = blockchainNodeId;
    final blockchainTypeValue = blockchainType;
    if (blockchainTypeValue != null) {
      map['blockchainType'] = blockchainTypeValue;
    }
    final ethereumDetailsValue = ethereumDetails;
    if (ethereumDetailsValue != null) {
      map['ethereumDetails'] = pulumi.Input.mapOptionalInputValue<
          BlockchainNodesEthereumDetails,
          Map<String, dynamic>>(ethereumDetailsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BlockchainNodesArgs.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesArgs(
      blockchainNodeId: pulumi.Input.asInput<String>(map['blockchainNodeId']),
      blockchainType:
          pulumi.Input.asOptionalInput<String>(map['blockchainType']),
      ethereumDetails:
          pulumi.Input.asOptionalInput<BlockchainNodesEthereumDetails>(
              map['ethereumDetails']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
