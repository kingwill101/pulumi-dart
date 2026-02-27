import 'package:pulumi/pulumi.dart' as pulumi;
import '../vmware_node_pool_config/vmware_node_pool_config.dart';
import '../vmware_node_pool_node_pool_autoscaling/vmware_node_pool_node_pool_autoscaling.dart';
import '../vmware_node_pool_status/vmware_node_pool_status.dart';
import 'vmware_node_pool_args.dart';

/// A Google Vmware Node Pool.
///
///
/// To get more information about VmwareNodePool, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.vmwareClusters.vmwareNodePools)
///
/// ## Example Usage
///
/// ### Gkeonprem Vmware Node Pool Basic
///
///
///
/// ### Gkeonprem Vmware Node Pool Full
///
///
///
///
/// ## Import
///
/// VmwareNodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareClusters/{{vmware_cluster}}/vmwareNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{vmware_cluster}}/{{name}}`
///
/// * `{{location}}/{{vmware_cluster}}/{{name}}`
///
/// When using the `pulumi import` command, VmwareNodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareNodePool:VMwareNodePool default projects/{{project}}/locations/{{location}}/vmwareClusters/{{vmware_cluster}}/vmwareNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareNodePool:VMwareNodePool default {{project}}/{{location}}/{{vmware_cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareNodePool:VMwareNodePool default {{location}}/{{vmware_cluster}}/{{name}}
/// ```
class VMwareNodePool extends pulumi.CustomResource {
  /// Annotations on the node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The node configuration of the node pool.
  /// Structure is documented below.
  late final pulumi.Output<VMwareNodePoolConfig> config;

  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// The time the cluster was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;

  /// The display name for the node pool.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// The vmware node pool name.
  late final pulumi.Output<String> name;

  /// Node Pool autoscaling config for the node pool.
  /// Structure is documented below.
  late final pulumi.Output<VMwareNodePoolNodePoolAutoscaling?>
      nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  late final pulumi.Output<String?> onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// If set, there are currently changes in flight to the node pool.
  late final pulumi.Output<bool> reconciling;

  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;

  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  late final pulumi.Output<List<VMwareNodePoolStatus>> statuses;

  /// The unique identifier of the node pool.
  late final pulumi.Output<String> uid;

  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// The cluster this node pool belongs to.
  late final pulumi.Output<String> vmwareCluster;

  VMwareNodePool(
    String name, {
    VMwareNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vMwareNodePool:VMwareNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.config = registerOutput<VMwareNodePoolConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nodePoolAutoscaling =
        registerOutput<VMwareNodePoolNodePoolAutoscaling?>(
            'nodePoolAutoscaling');
    this.onPremVersion = registerOutput<String?>('onPremVersion');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<VMwareNodePoolStatus>>('statuses');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareCluster = registerOutput<String>('vmwareCluster');
  }
}
