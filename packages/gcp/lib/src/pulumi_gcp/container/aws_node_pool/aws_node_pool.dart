import 'package:pulumi/pulumi.dart';
import '../aws_node_pool_autoscaling/aws_node_pool_autoscaling.dart';
import '../aws_node_pool_config/aws_node_pool_config.dart';
import '../aws_node_pool_kubelet_config/aws_node_pool_kubelet_config.dart';
import '../aws_node_pool_management/aws_node_pool_management.dart';
import '../aws_node_pool_max_pods_constraint/aws_node_pool_max_pods_constraint.dart';
import '../aws_node_pool_update_settings/aws_node_pool_update_settings.dart';
import 'aws_node_pool_args.dart';

/// An Anthos node pool running on AWS.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_aws_cluster
/// A basic example of a containeraws node pool
///
/// ### Basic_enum_aws_cluster
/// A basic example of a containeraws node pool with lowercase enums
///
/// ### Beta_basic_enum_aws_cluster
/// A basic example of a containeraws node pool with lowercase enums (beta)
///
///
/// ## Import
///
/// NodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/awsClusters/{{cluster}}/awsNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{name}}`
///
/// * `{{location}}/{{cluster}}/{{name}}`
///
/// When using the `pulumi import` command, NodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/awsNodePool:AwsNodePool default projects/{{project}}/locations/{{location}}/awsClusters/{{cluster}}/awsNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsNodePool:AwsNodePool default {{project}}/{{location}}/{{cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsNodePool:AwsNodePool default {{location}}/{{cluster}}/{{name}}
/// ```
class AwsNodePool extends CustomResource {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Autoscaler configuration for this node pool.
  late final Output<AwsNodePoolAutoscaling> autoscaling;

  /// The awsCluster for the resource
  late final Output<String> cluster;

  /// The configuration of the node pool.
  late final Output<AwsNodePoolConfig> config;

  /// Output only. The time at which this node pool was created.
  late final Output<String> createTime;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The kubelet configuration for the node pool.
  late final Output<AwsNodePoolKubeletConfig> kubeletConfig;

  /// The location for the resource
  late final Output<String> location;

  /// The Management configuration for this node pool.
  late final Output<AwsNodePoolManagement> management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  late final Output<AwsNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// Output only. If set, there are currently changes in flight to the node pool.
  late final Output<bool> reconciling;

  /// Output only. The lifecycle state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final Output<String> state;

  /// The subnet where the node pool node run.
  late final Output<String> subnetId;

  /// Output only. A globally unique identifier for the node pool.
  late final Output<String> uid;

  /// Optional. Update settings control the speed and disruption of the node pool update.
  late final Output<AwsNodePoolUpdateSettings> updateSettings;

  /// Output only. The time at which this node pool was last updated.
  late final Output<String> updateTime;

  /// The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  late final Output<String> version;

  AwsNodePool(
    String name, {
    AwsNodePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/awsNodePool:AwsNodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.autoscaling = registerOutput<AwsNodePoolAutoscaling>('autoscaling');
    this.cluster = registerOutput<String>('cluster');
    this.config = registerOutput<AwsNodePoolConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.kubeletConfig =
        registerOutput<AwsNodePoolKubeletConfig>('kubeletConfig');
    this.location = registerOutput<String>('location');
    this.management = registerOutput<AwsNodePoolManagement>('management');
    this.maxPodsConstraint =
        registerOutput<AwsNodePoolMaxPodsConstraint>('maxPodsConstraint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.subnetId = registerOutput<String>('subnetId');
    this.uid = registerOutput<String>('uid');
    this.updateSettings =
        registerOutput<AwsNodePoolUpdateSettings>('updateSettings');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }
}
