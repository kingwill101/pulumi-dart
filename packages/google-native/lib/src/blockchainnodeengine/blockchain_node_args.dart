// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_node_blockchain_type.dart';
import 'ethereum_details.dart';

/// {@template pulumi_blockchainnodeengine_v1_blockchain_node_args_doc}
/// The set of arguments for BlockchainNode.
/// {@endtemplate}
/// {@macro pulumi_blockchainnodeengine_v1_blockchain_node_args_doc}
class BlockchainNodeArgs {
  /// Required. ID of the requesting object.
  final pulumi.Input<String> blockchainNodeId;
  /// Immutable. The blockchain type of the node.
  final pulumi.Input<BlockchainNodeBlockchainType>? blockchainType;
  /// Ethereum-specific blockchain node details.
  final pulumi.Input<EthereumDetails>? ethereumDetails;
  /// User-provided key-value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. When true, the node is only accessible via Private Service Connect; no public endpoints are exposed. Otherwise, the node is only accessible via public endpoints. See https://cloud.google.com/vpc/docs/private-service-connect.
  final pulumi.Input<bool>? privateServiceConnectEnabled;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [BlockchainNodeArgs].
  /// [blockchainNodeId] Required. ID of the requesting object.
  /// [blockchainType] Immutable. The blockchain type of the node.
  /// [ethereumDetails] Ethereum-specific blockchain node details.
  /// [labels] User-provided key-value pairs.
  /// [location] Optional.
  /// [privateServiceConnectEnabled] Optional. When true, the node is only accessible via Private Service Connect; no public endpoints are exposed. Otherwise, the node is only accessible via public endpoints. See https://cloud.google.com/vpc/docs/private-service-connect.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  BlockchainNodeArgs({
    required String blockchainNodeId,
    BlockchainNodeBlockchainType? blockchainType,
    EthereumDetails? ethereumDetails,
    Map<String, String>? labels,
    String? location,
    bool? privateServiceConnectEnabled,
    String? project,
    String? requestId,
  }) :
      blockchainNodeId = pulumi.Input.asInput<String>(blockchainNodeId),
      blockchainType = pulumi.Input.asOptionalInput<BlockchainNodeBlockchainType>(blockchainType),
      ethereumDetails = pulumi.Input.asOptionalInput<EthereumDetails>(ethereumDetails),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateServiceConnectEnabled = pulumi.Input.asOptionalInput<bool>(privateServiceConnectEnabled),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockchainNodeId': blockchainNodeId,
      'blockchainType': ?pulumi.Input.mapOptionalInputValue<BlockchainNodeBlockchainType, String>(blockchainType, (value) => value.value),
      'ethereumDetails': ?pulumi.Input.mapOptionalInputValue<EthereumDetails, Map<String, dynamic>>(ethereumDetails, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'privateServiceConnectEnabled': ?privateServiceConnectEnabled,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory BlockchainNodeArgs.fromMap(Map<String, dynamic> map) {
    return BlockchainNodeArgs(
      blockchainNodeId: map['blockchainNodeId'] as String,
      blockchainType: map['blockchainType'] == null ? null : BlockchainNodeBlockchainType.fromValue(map['blockchainType'] as String),
      ethereumDetails: map['ethereumDetails'] == null ? null : EthereumDetails.fromMap((map['ethereumDetails'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      privateServiceConnectEnabled: map['privateServiceConnectEnabled'] == null ? null : map['privateServiceConnectEnabled'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}

