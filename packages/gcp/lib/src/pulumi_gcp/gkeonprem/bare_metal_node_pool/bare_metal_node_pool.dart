import 'package:pulumi/pulumi.dart';
import '../bare_metal_node_pool_node_pool_config/bare_metal_node_pool_node_pool_config.dart';
import '../bare_metal_node_pool_status/bare_metal_node_pool_status.dart';
import 'bare_metal_node_pool_args.dart';

/// A Google Bare Metal Node Pool.
///
///
/// To get more information about BareMetalNodePool, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.bareMetalClusters.bareMetalNodePools)
///
/// ## Example Usage
///
/// ### Gkeonprem Bare Metal Node Pool Basic
///
///
///
/// ### Gkeonprem Bare Metal Node Pool Full
///
///
///
///
/// ## Import
///
/// BareMetalNodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bareMetalClusters/{{bare_metal_cluster}}/bareMetalNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{bare_metal_cluster}}/{{name}}`
///
/// * `{{location}}/{{bare_metal_cluster}}/{{name}}`
///
/// When using the `pulumi import` command, BareMetalNodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool default projects/{{project}}/locations/{{location}}/bareMetalClusters/{{bare_metal_cluster}}/bareMetalNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool default {{project}}/{{location}}/{{bare_metal_cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool default {{location}}/{{bare_metal_cluster}}/{{name}}
/// ```
class BareMetalNodePool extends CustomResource {
  /// Annotations on the Bare Metal Node Pool.
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
  late final Output<Map<String, String>?> annotations;

  /// The cluster this node pool belongs to.
  late final Output<String> bareMetalCluster;

  /// The time the cluster was created, in RFC3339 text format.
  late final Output<String> createTime;

  /// The time the cluster was deleted, in RFC3339 text format.
  late final Output<String> deleteTime;

  /// The display name for the Bare Metal Node Pool.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final Output<String> etag;

  /// The location of the resource.
  late final Output<String> location;

  /// The bare metal node pool name.
  late final Output<String> name;

  /// Node pool configuration.
  /// Structure is documented below.
  late final Output<BareMetalNodePoolNodePoolConfig> nodePoolConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// If set, there are currently changes in flight to the Bare Metal User Cluster.
  late final Output<bool> reconciling;

  /// (Output)
  /// The lifecycle state of the condition.
  late final Output<String> state;

  /// Specifies detailed node pool status.
  /// Structure is documented below.
  late final Output<List<BareMetalNodePoolStatus>> statuses;

  /// The unique identifier of the Bare Metal Node Pool.
  late final Output<String> uid;

  /// The time the cluster was last updated, in RFC3339 text format.
  late final Output<String> updateTime;

  BareMetalNodePool(
    String name, {
    BareMetalNodePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bareMetalCluster = registerOutput<String>('bareMetalCluster');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nodePoolConfig =
        registerOutput<BareMetalNodePoolNodePoolConfig>('nodePoolConfig');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<BareMetalNodePoolStatus>>('statuses');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
