import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_local_disk_encryption/node_pool_local_disk_encryption.dart';
import '../node_pool_node_config/node_pool_node_config_edgecontainer.dart';
import 'node_pool_edgecontainer_args.dart';

/// "A set of Kubernetes nodes in a cluster with common configuration and specification."
///
///
/// To get more information about NodePool, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/container/rest/v1/projects.locations.clusters.nodePools)
/// * How-to Guides
/// * [Google Distributed Cloud Edge](https://cloud.google.com/distributed-cloud/edge/latest/docs)
///
/// ## Example Usage
///
/// ### Edgecontainer Local Control Plane Node Pool
///
///
///
///
/// ## Import
///
/// NodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/nodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{name}}`
///
/// * `{{location}}/{{cluster}}/{{name}}`
///
/// When using the `pulumi import` command, NodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/nodePool:NodePool default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/nodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/nodePool:NodePool default {{project}}/{{location}}/{{cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/nodePool:NodePool default {{location}}/{{cluster}}/{{name}}
/// ```
class NodePoolEdgecontainer extends pulumi.CustomResource {
  /// The name of the target Distributed Cloud Edge Cluster.
  late final pulumi.Output<String> cluster;

  /// The time when the node pool was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  late final pulumi.Output<NodePoolLocalDiskEncryption?> localDiskEncryption;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// Only machines matching this filter will be allowed to join the node pool.
  /// The filtering language accepts strings like "name=<name>", and is
  /// documented in more detail in [AIP-160](https://google.aip.dev/160).
  late final pulumi.Output<String> machineFilter;

  /// The resource name of the node pool.
  late final pulumi.Output<String> name;

  /// Configuration for each node in the NodePool
  /// Structure is documented below.
  late final pulumi.Output<NodePoolNodeConfigEdgecontainer> nodeConfig;

  /// The number of nodes in the pool.
  late final pulumi.Output<int> nodeCount;

  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  late final pulumi.Output<String> nodeLocation;

  /// The lowest release version among all worker nodes.
  late final pulumi.Output<String> nodeVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The time when the node pool was last updated.
  late final pulumi.Output<String> updateTime;

  NodePoolEdgecontainer(
    String name, {
    NodePoolEdgecontainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/nodePool:NodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.localDiskEncryption =
        registerOutput<NodePoolLocalDiskEncryption?>('localDiskEncryption');
    this.location = registerOutput<String>('location');
    this.machineFilter = registerOutput<String>('machineFilter');
    this.name = registerOutput<String>('name');
    this.nodeConfig =
        registerOutput<NodePoolNodeConfigEdgecontainer>('nodeConfig');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nodeLocation = registerOutput<String>('nodeLocation');
    this.nodeVersion = registerOutput<String>('nodeVersion');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
