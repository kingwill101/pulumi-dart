import 'package:pulumi/pulumi.dart';
import '../node_pool_local_disk_encryption/node_pool_local_disk_encryption.dart';
import '../node_pool_node_config/node_pool_node_config2.dart';
import 'node_pool_args2.dart';

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
class NodePool2 extends CustomResource {
  /// The name of the target Distributed Cloud Edge Cluster.
  late final Output<String> cluster;

  /// The time when the node pool was created.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  late final Output<NodePoolLocalDiskEncryption?> localDiskEncryption;

  /// The location of the resource.
  late final Output<String> location;

  /// Only machines matching this filter will be allowed to join the node pool.
  /// The filtering language accepts strings like "name=<name>", and is
  /// documented in more detail in [AIP-160](https://google.aip.dev/160).
  late final Output<String> machineFilter;

  /// The resource name of the node pool.
  late final Output<String> name;

  /// Configuration for each node in the NodePool
  /// Structure is documented below.
  late final Output<NodePoolNodeConfig2> nodeConfig;

  /// The number of nodes in the pool.
  late final Output<int> nodeCount;

  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  late final Output<String> nodeLocation;

  /// The lowest release version among all worker nodes.
  late final Output<String> nodeVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The time when the node pool was last updated.
  late final Output<String> updateTime;

  NodePool2(
    String name, {
    NodePoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/nodePool:NodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
    this.nodeConfig = registerOutput<NodePoolNodeConfig2>('nodeConfig');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nodeLocation = registerOutput<String>('nodeLocation');
    this.nodeVersion = registerOutput<String>('nodeVersion');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
