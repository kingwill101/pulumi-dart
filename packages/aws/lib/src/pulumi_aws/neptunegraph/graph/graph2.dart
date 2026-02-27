import 'package:pulumi/pulumi.dart';
import '../graph_timeouts/graph_timeouts.dart';
import '../graph_vector_search_configuration/graph_vector_search_configuration.dart';
import 'graph_args2.dart';

/// The `aws.neptunegraph.Graph` resource creates an Amazon Analytics Graph.
///
/// ## Example Usage
///
/// ### Neptune Graph (with Vector Search configuration)
///
/// Creates a Neptune Graph with 16GB provisioned memory, vector search capability with 128 dimensions, and a single replica for high availability.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptunegraph.Graph` using the graph identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptunegraph/graph:Graph example "graph_id"
/// ```
class Graph2 extends CustomResource {
  /// (String) Graph resource ARN
  late final Output<String> arn;

  /// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  late final Output<bool> deletionProtection;

  /// (String) The connection endpoint for the graph. For example: `g-12a3bcdef4.us-east-1.neptune-graph.amazonaws.com`
  late final Output<String> endpoint;

  /// Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  late final Output<String> graphName;

  /// Allows user to specify name prefix and have remainder of name automatically generated.
  late final Output<String?> graphNamePrefix;

  /// The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  late final Output<String> kmsKeyIdentifier;

  /// The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  ///
  /// The following arguments are optional:
  late final Output<int> provisionedMemory;

  /// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its Domain Name System (DNS) endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  late final Output<bool> publicConnectivity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  late final Output<int> replicaCount;

  /// Key-value tags for the graph. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<GraphTimeouts?> timeouts;

  /// Vector Search Configuration (see below for nested schema of vector_search_configuration)
  late final Output<GraphVectorSearchConfiguration?> vectorSearchConfiguration;

  Graph2(
    String name, {
    GraphArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptunegraph/graph:Graph',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.endpoint = registerOutput<String>('endpoint');
    this.graphName = registerOutput<String>('graphName');
    this.graphNamePrefix = registerOutput<String?>('graphNamePrefix');
    this.kmsKeyIdentifier = registerOutput<String>('kmsKeyIdentifier');
    this.provisionedMemory = registerOutput<int>('provisionedMemory');
    this.publicConnectivity = registerOutput<bool>('publicConnectivity');
    this.region = registerOutput<String>('region');
    this.replicaCount = registerOutput<int>('replicaCount');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<GraphTimeouts?>('timeouts');
    this.vectorSearchConfiguration =
        registerOutput<GraphVectorSearchConfiguration?>(
            'vectorSearchConfiguration');
  }
}
