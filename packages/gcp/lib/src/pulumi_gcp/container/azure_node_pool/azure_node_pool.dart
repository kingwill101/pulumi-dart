import 'package:pulumi/pulumi.dart' as pulumi;
import '../azure_node_pool_autoscaling/azure_node_pool_autoscaling.dart';
import '../azure_node_pool_config/azure_node_pool_config.dart';
import '../azure_node_pool_management/azure_node_pool_management.dart';
import '../azure_node_pool_max_pods_constraint/azure_node_pool_max_pods_constraint.dart';
import 'azure_node_pool_args.dart';

/// An Anthos node pool running on Azure.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_azure_node_pool
/// A basic example of a containerazure azure node pool
///
///
/// ## Import
///
/// NodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/azureClusters/{{cluster}}/azureNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{name}}`
///
/// * `{{location}}/{{cluster}}/{{name}}`
///
/// When using the `pulumi import` command, NodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/azureNodePool:AzureNodePool default projects/{{project}}/locations/{{location}}/azureClusters/{{cluster}}/azureNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureNodePool:AzureNodePool default {{project}}/{{location}}/{{cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureNodePool:AzureNodePool default {{location}}/{{cluster}}/{{name}}
/// ```
class AzureNodePool extends pulumi.CustomResource {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Autoscaler configuration for this node pool.
  late final pulumi.Output<AzureNodePoolAutoscaling> autoscaling;

  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  late final pulumi.Output<String> azureAvailabilityZone;

  /// The azureCluster for the resource
  late final pulumi.Output<String> cluster;

  /// The node configuration of the node pool.
  late final pulumi.Output<AzureNodePoolConfig> config;

  /// Output only. The time at which this node pool was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// The Management configuration for this node pool.
  late final pulumi.Output<AzureNodePoolManagement> management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  late final pulumi.Output<AzureNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// Output only. If set, there are currently pending changes to the node pool.
  late final pulumi.Output<bool> reconciling;

  /// Output only. The current state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final pulumi.Output<String> state;

  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  late final pulumi.Output<String> subnetId;

  /// Output only. A globally unique identifier for the node pool.
  late final pulumi.Output<String> uid;

  /// Output only. The time at which this node pool was last updated.
  late final pulumi.Output<String> updateTime;

  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  late final pulumi.Output<String> version;

  AzureNodePool(
    String name, {
    AzureNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/azureNodePool:AzureNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.autoscaling = registerOutput<AzureNodePoolAutoscaling>('autoscaling');
    this.azureAvailabilityZone =
        registerOutput<String>('azureAvailabilityZone');
    this.cluster = registerOutput<String>('cluster');
    this.config = registerOutput<AzureNodePoolConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.management = registerOutput<AzureNodePoolManagement>('management');
    this.maxPodsConstraint =
        registerOutput<AzureNodePoolMaxPodsConstraint>('maxPodsConstraint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.subnetId = registerOutput<String>('subnetId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }
}
