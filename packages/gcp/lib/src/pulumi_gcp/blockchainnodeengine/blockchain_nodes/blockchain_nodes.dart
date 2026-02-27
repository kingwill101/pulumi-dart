import 'package:pulumi/pulumi.dart' as pulumi;
import '../blockchain_nodes_connection_info/blockchain_nodes_connection_info.dart';
import '../blockchain_nodes_ethereum_details/blockchain_nodes_ethereum_details.dart';
import 'blockchain_nodes_args.dart';

/// A representation of a blockchain node.
///
///
/// To get more information about BlockchainNodes, see:
///
/// * [API documentation](https://cloud.google.com/blockchain-node-engine/docs/reference/rest/v1/projects.locations.blockchainNodes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/blockchain-node-engine)
///
/// ## Example Usage
///
/// ### Blockchain Nodes Basic
///
///
///
/// ### Blockchain Nodes Geth Details
///
///
///
///
/// ## Import
///
/// BlockchainNodes can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/blockchainNodes/{{blockchain_node_id}}`
///
/// * `{{project}}/{{location}}/{{blockchain_node_id}}`
///
/// * `{{location}}/{{blockchain_node_id}}`
///
/// When using the `pulumi import` command, BlockchainNodes can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes default projects/{{project}}/locations/{{location}}/blockchainNodes/{{blockchain_node_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes default {{project}}/{{location}}/{{blockchain_node_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes default {{location}}/{{blockchain_node_id}}
/// ```
class BlockchainNodes extends pulumi.CustomResource {
  /// ID of the requesting object.
  late final pulumi.Output<String> blockchainNodeId;

  /// User-provided key-value pairs
  /// Possible values are: `ETHEREUM`.
  late final pulumi.Output<String?> blockchainType;

  /// The connection information through which to interact with a blockchain node.
  /// Structure is documented below.
  late final pulumi.Output<List<BlockchainNodesConnectionInfo>> connectionInfos;

  /// The timestamp at which the blockchain node was first created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-provided key-value pairs
  /// Structure is documented below.
  late final pulumi.Output<BlockchainNodesEthereumDetails?> ethereumDetails;

  /// User-provided key-value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location of Blockchain Node being created.
  late final pulumi.Output<String> location;

  /// The fully qualified name of the blockchain node. e.g. projects/my-project/locations/us-central1/blockchainNodes/my-node.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The timestamp at which the blockchain node was last updated.
  late final pulumi.Output<String> updateTime;

  BlockchainNodes(
    String name, {
    BlockchainNodesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockchainNodeId = registerOutput<String>('blockchainNodeId');
    this.blockchainType = registerOutput<String?>('blockchainType');
    this.connectionInfos =
        registerOutput<List<BlockchainNodesConnectionInfo>>('connectionInfos');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ethereumDetails =
        registerOutput<BlockchainNodesEthereumDetails?>('ethereumDetails');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
