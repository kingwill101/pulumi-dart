import 'package:pulumi/pulumi.dart' hide Config;
import 'blockchain_node_args.dart';
import 'connection_info_response.dart';
import 'ethereum_details_response.dart';

/// Creates a new blockchain node in a given project and location.
/// Auto-naming is currently not supported for this resource.
class BlockchainNode extends CustomResource {
  /// Required. ID of the requesting object.
  late final Output<String> blockchainNodeId;

  /// Immutable. The blockchain type of the node.
  late final Output<String> blockchainType;

  /// The connection information used to interact with a blockchain node.
  late final Output<ConnectionInfoResponse> connectionInfo;

  /// The timestamp at which the blockchain node was first created.
  late final Output<String> createTime;

  /// Ethereum-specific blockchain node details.
  late final Output<EthereumDetailsResponse> ethereumDetails;

  /// User-provided key-value pairs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The fully qualified name of the blockchain node. e.g. `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  late final Output<String> name;

  /// Optional. When true, the node is only accessible via Private Service Connect; no public endpoints are exposed. Otherwise, the node is only accessible via public endpoints. See https://cloud.google.com/vpc/docs/private-service-connect.
  late final Output<bool> privateServiceConnectEnabled;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// A status representing the state of the node.
  late final Output<String> state;

  /// The timestamp at which the blockchain node was last updated.
  late final Output<String> updateTime;

  BlockchainNode(
    String name, {
    BlockchainNodeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:blockchainnodeengine/v1:BlockchainNode',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockchainNodeId = registerOutput<String>('blockchainNodeId');
    this.blockchainType = registerOutput<String>('blockchainType');
    this.connectionInfo =
        registerOutput<ConnectionInfoResponse>('connectionInfo');
    this.createTime = registerOutput<String>('createTime');
    this.ethereumDetails =
        registerOutput<EthereumDetailsResponse>('ethereumDetails');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateServiceConnectEnabled =
        registerOutput<bool>('privateServiceConnectEnabled');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
