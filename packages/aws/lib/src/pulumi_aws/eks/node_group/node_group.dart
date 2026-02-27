import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_group_launch_template/node_group_launch_template.dart';
import '../node_group_node_repair_config/node_group_node_repair_config.dart';
import '../node_group_remote_access/node_group_remote_access.dart';
import '../node_group_resource/node_group_resource.dart';
import '../node_group_scaling_config/node_group_scaling_config.dart';
import '../node_group_taint/node_group_taint.dart';
import '../node_group_update_config/node_group_update_config.dart';
import 'node_group_args.dart';

/// Manages an EKS Node Group, which can provision and optionally update an Auto Scaling Group of Kubernetes worker nodes compatible with EKS. Additional documentation about this functionality can be found in the [EKS User Guide](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html).
///
/// ## Example Usage
///
///
///
/// ### Ignoring Changes to Desired Size
///
/// You can utilize [ignoreChanges](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) create an EKS Node Group with an initial size of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
///
///
/// ### Example IAM Role for EKS Node Group
///
///
///
/// ### Example Subnets for EKS Node Group
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Node Groups using the `cluster_name` and `node_group_name` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/nodeGroup:NodeGroup my_node_group my_cluster:my_node_group
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the [AWS documentation](https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid values. This provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> amiType;

  /// Amazon Resource Name (ARN) of the EKS Node Group.
  late final pulumi.Output<String> arn;

  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> capacityType;

  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;

  /// Disk size in GiB for worker nodes. Defaults to `50` for Windows, `20` all other node groups. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<int> diskSize;

  /// Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
  late final pulumi.Output<bool?> forceUpdateVersion;

  /// List of instance types associated with the EKS Node Group. Defaults to `["t3.medium"]`. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<List<String>> instanceTypes;

  /// Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Configuration block with Launch Template settings. See `launch_template` below for details. Conflicts with `remote_access`.
  late final pulumi.Output<NodeGroupLaunchTemplate?> launchTemplate;

  /// Name of the EKS Node Group. If omitted, the provider will assign a random, unique name. Conflicts with `node_group_name_prefix`. The node group name can't be longer than 63 characters. It must start with a letter or digit, but can also include hyphens and underscores for the remaining characters.
  late final pulumi.Output<String> nodeGroupName;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `node_group_name`.
  late final pulumi.Output<String> nodeGroupNamePrefix;

  /// The node auto repair configuration for the node group. See `node_repair_config` below for details.
  late final pulumi.Output<NodeGroupNodeRepairConfig> nodeRepairConfig;

  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
  late final pulumi.Output<String> nodeRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  late final pulumi.Output<String> releaseVersion;

  /// Configuration block with remote access settings. See `remote_access` below for details. Conflicts with `launch_template`.
  late final pulumi.Output<NodeGroupRemoteAccess?> remoteAccess;

  /// List of objects containing information about underlying resources.
  late final pulumi.Output<List<NodeGroupResource>> resources;

  /// Configuration block with scaling settings. See `scaling_config` below for details.
  late final pulumi.Output<NodeGroupScalingConfig> scalingConfig;

  /// Status of the EKS Node Group.
  late final pulumi.Output<String> status;

  /// Identifiers of EC2 Subnets to associate with the EKS Node Group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> subnetIds;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
  late final pulumi.Output<List<NodeGroupTaint>?> taints;

  /// Configuration block with update settings. See `update_config` below for details.
  late final pulumi.Output<NodeGroupUpdateConfig> updateConfig;

  /// Kubernetes version. Defaults to EKS Cluster Kubernetes version. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> version;

  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amiType = registerOutput<String>('amiType');
    this.arn = registerOutput<String>('arn');
    this.capacityType = registerOutput<String>('capacityType');
    this.clusterName = registerOutput<String>('clusterName');
    this.diskSize = registerOutput<int>('diskSize');
    this.forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    this.instanceTypes = registerOutput<List<String>>('instanceTypes');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.launchTemplate =
        registerOutput<NodeGroupLaunchTemplate?>('launchTemplate');
    this.nodeGroupName = registerOutput<String>('nodeGroupName');
    this.nodeGroupNamePrefix = registerOutput<String>('nodeGroupNamePrefix');
    this.nodeRepairConfig =
        registerOutput<NodeGroupNodeRepairConfig>('nodeRepairConfig');
    this.nodeRoleArn = registerOutput<String>('nodeRoleArn');
    this.region = registerOutput<String>('region');
    this.releaseVersion = registerOutput<String>('releaseVersion');
    this.remoteAccess = registerOutput<NodeGroupRemoteAccess?>('remoteAccess');
    this.resources = registerOutput<List<NodeGroupResource>>('resources');
    this.scalingConfig =
        registerOutput<NodeGroupScalingConfig>('scalingConfig');
    this.status = registerOutput<String>('status');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taints = registerOutput<List<NodeGroupTaint>?>('taints');
    this.updateConfig = registerOutput<NodeGroupUpdateConfig>('updateConfig');
    this.version = registerOutput<String>('version');
  }
}
