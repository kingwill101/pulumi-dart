// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'blockchain_node_blockchain_type.dart';
import 'ethereum_details.dart';

/// The set of arguments for BlockchainNode.
class BlockchainNodeArgs {
  /// Required. ID of the requesting object.
  final Input<String> blockchainNodeId;

  /// Immutable. The blockchain type of the node.
  final Input<BlockchainNodeBlockchainType>? blockchainType;

  /// Ethereum-specific blockchain node details.
  final Input<EthereumDetails>? ethereumDetails;

  /// User-provided key-value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. When true, the node is only accessible via Private Service Connect; no public endpoints are exposed. Otherwise, the node is only accessible via public endpoints. See https://cloud.google.com/vpc/docs/private-service-connect.
  final Input<bool>? privateServiceConnectEnabled;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  BlockchainNodeArgs({
    required this.blockchainNodeId,
    this.blockchainType,
    this.ethereumDetails,
    this.labels,
    this.location,
    this.privateServiceConnectEnabled,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockchainNodeId'] = blockchainNodeId;
    final blockchainTypeValue = blockchainType;
    if (blockchainTypeValue != null) {
      map['blockchainType'] =
          Input.mapOptionalInputValue<BlockchainNodeBlockchainType, String>(
              blockchainTypeValue, (value) => value.value);
    }
    final ethereumDetailsValue = ethereumDetails;
    if (ethereumDetailsValue != null) {
      map['ethereumDetails'] =
          Input.mapOptionalInputValue<EthereumDetails, Map<String, dynamic>>(
              ethereumDetailsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final privateServiceConnectEnabledValue = privateServiceConnectEnabled;
    if (privateServiceConnectEnabledValue != null) {
      map['privateServiceConnectEnabled'] = privateServiceConnectEnabledValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory BlockchainNodeArgs.fromMap(Map<String, dynamic> map) {
    return BlockchainNodeArgs(
      blockchainNodeId: Input.asInput<String>(map['blockchainNodeId']),
      blockchainType: Input.asOptionalInput<BlockchainNodeBlockchainType>(
          map['blockchainType']),
      ethereumDetails:
          Input.asOptionalInput<EthereumDetails>(map['ethereumDetails']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      privateServiceConnectEnabled:
          Input.asOptionalInput<bool>(map['privateServiceConnectEnabled']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
