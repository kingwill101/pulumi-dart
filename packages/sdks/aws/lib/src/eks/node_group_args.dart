// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_launch_template.dart';
import 'node_group_node_repair_config.dart';
import 'node_group_remote_access.dart';
import 'node_group_scaling_config.dart';
import 'node_group_taint.dart';
import 'node_group_update_config.dart';

/// {@template pulumi_eks_node_group_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_eks_node_group_node_group_args_doc}
class NodeGroupArgs {
  /// Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the [AWS documentation](https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid values. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? amiType;
  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? capacityType;
  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;
  /// Disk size in GiB for worker nodes. Defaults to `50` for Windows, `20` all other node groups. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<int>? diskSize;
  /// Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
  final pulumi.Input<bool>? forceUpdateVersion;
  /// List of instance types associated with the EKS Node Group. Defaults to `["t3.medium"]`. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<List<String>>? instanceTypes;
  /// Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configuration block with Launch Template settings. See `launch_template` below for details. Conflicts with `remote_access`.
  final pulumi.Input<NodeGroupLaunchTemplate>? launchTemplate;
  /// Name of the EKS Node Group. If omitted, the provider will assign a random, unique name. Conflicts with `node_group_name_prefix`. The node group name can't be longer than 63 characters. It must start with a letter or digit, but can also include hyphens and underscores for the remaining characters.
  final pulumi.Input<String>? nodeGroupName;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `node_group_name`.
  final pulumi.Input<String>? nodeGroupNamePrefix;
  /// The node auto repair configuration for the node group. See `node_repair_config` below for details.
  final pulumi.Input<NodeGroupNodeRepairConfig>? nodeRepairConfig;
  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
  final pulumi.Input<String> nodeRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  final pulumi.Input<String>? releaseVersion;
  /// Configuration block with remote access settings. See `remote_access` below for details. Conflicts with `launch_template`.
  final pulumi.Input<NodeGroupRemoteAccess>? remoteAccess;
  /// Configuration block with scaling settings. See `scaling_config` below for details.
  final pulumi.Input<NodeGroupScalingConfig> scalingConfig;
  /// Identifiers of EC2 Subnets to associate with the EKS Node Group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> subnetIds;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
  final pulumi.Input<List<NodeGroupTaint>>? taints;
  /// Configuration block with update settings. See `update_config` below for details.
  final pulumi.Input<NodeGroupUpdateConfig>? updateConfig;
  /// Kubernetes version. Defaults to EKS Cluster Kubernetes version. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? version;

  /// Creates a new [NodeGroupArgs].
  /// [amiType] Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the [AWS documentation](https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid values. This provider will only perform drift detection if a configuration value is provided.
  /// [capacityType] Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  /// [clusterName] Name of the EKS Cluster.
  /// [diskSize] Disk size in GiB for worker nodes. Defaults to `50` for Windows, `20` all other node groups. The provider will only perform drift detection if a configuration value is provided.
  /// [forceUpdateVersion] Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
  /// [instanceTypes] List of instance types associated with the EKS Node Group. Defaults to `["t3.medium"]`. The provider will only perform drift detection if a configuration value is provided.
  /// [labels] Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  /// [launchTemplate] Configuration block with Launch Template settings. See `launch_template` below for details. Conflicts with `remote_access`.
  /// [nodeGroupName] Name of the EKS Node Group. If omitted, the provider will assign a random, unique name. Conflicts with `node_group_name_prefix`. The node group name can't be longer than 63 characters. It must start with a letter or digit, but can also include hyphens and underscores for the remaining characters.
  /// [nodeGroupNamePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `node_group_name`.
  /// [nodeRepairConfig] The node auto repair configuration for the node group. See `node_repair_config` below for details.
  /// [nodeRoleArn] Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseVersion] AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  /// [remoteAccess] Configuration block with remote access settings. See `remote_access` below for details. Conflicts with `launch_template`.
  /// [scalingConfig] Configuration block with scaling settings. See `scaling_config` below for details.
  /// [subnetIds] Identifiers of EC2 Subnets to associate with the EKS Node Group.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taints] The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
  /// [updateConfig] Configuration block with update settings. See `update_config` below for details.
  /// [version] Kubernetes version. Defaults to EKS Cluster Kubernetes version. The provider will only perform drift detection if a configuration value is provided.
  NodeGroupArgs({
    this.amiType,
    this.capacityType,
    required this.clusterName,
    this.diskSize,
    this.forceUpdateVersion,
    this.instanceTypes,
    this.labels,
    this.launchTemplate,
    this.nodeGroupName,
    this.nodeGroupNamePrefix,
    this.nodeRepairConfig,
    required this.nodeRoleArn,
    this.region,
    this.releaseVersion,
    this.remoteAccess,
    required this.scalingConfig,
    required this.subnetIds,
    this.tags,
    this.taints,
    this.updateConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiType': ?amiType,
      'capacityType': ?capacityType,
      'clusterName': clusterName,
      'diskSize': ?diskSize,
      'forceUpdateVersion': ?forceUpdateVersion,
      'instanceTypes': ?instanceTypes,
      'labels': ?labels,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<NodeGroupLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'nodeGroupName': ?nodeGroupName,
      'nodeGroupNamePrefix': ?nodeGroupNamePrefix,
      'nodeRepairConfig': ?pulumi.Input.mapOptionalInputValue<NodeGroupNodeRepairConfig, Map<String, dynamic>>(nodeRepairConfig, (value) => value.toMap()),
      'nodeRoleArn': nodeRoleArn,
      'region': ?region,
      'releaseVersion': ?releaseVersion,
      'remoteAccess': ?pulumi.Input.mapOptionalInputValue<NodeGroupRemoteAccess, Map<String, dynamic>>(remoteAccess, (value) => value.toMap()),
      'scalingConfig': pulumi.Input.mapInputValue<NodeGroupScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'subnetIds': subnetIds,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeGroupTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateConfig': ?pulumi.Input.mapOptionalInputValue<NodeGroupUpdateConfig, Map<String, dynamic>>(updateConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      amiType: map['amiType'] == null ? null : ((map['amiType'] as String).input()).input(),
      capacityType: map['capacityType'] == null ? null : ((map['capacityType'] as String).input()).input(),
      clusterName: (map['clusterName'] as String).input(),
      diskSize: map['diskSize'] == null ? null : ((map['diskSize'] as int).input()).input(),
      forceUpdateVersion: map['forceUpdateVersion'] == null ? null : ((map['forceUpdateVersion'] as bool).input()).input(),
      instanceTypes: map['instanceTypes'] == null ? null : (((map['instanceTypes'] as List).cast<String>()).input()).input(),
      labels: map['labels'] == null ? null : (((map['labels'] as Map).cast<String, String>()).input()).input(),
      launchTemplate: map['launchTemplate'] == null ? null : ((NodeGroupLaunchTemplate.fromMap((map['launchTemplate']! as Map).cast<String, dynamic>())).input()).input(),
      nodeGroupName: map['nodeGroupName'] == null ? null : ((map['nodeGroupName'] as String).input()).input(),
      nodeGroupNamePrefix: map['nodeGroupNamePrefix'] == null ? null : ((map['nodeGroupNamePrefix'] as String).input()).input(),
      nodeRepairConfig: map['nodeRepairConfig'] == null ? null : ((NodeGroupNodeRepairConfig.fromMap((map['nodeRepairConfig']! as Map).cast<String, dynamic>())).input()).input(),
      nodeRoleArn: (map['nodeRoleArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      releaseVersion: map['releaseVersion'] == null ? null : ((map['releaseVersion'] as String).input()).input(),
      remoteAccess: map['remoteAccess'] == null ? null : ((NodeGroupRemoteAccess.fromMap((map['remoteAccess']! as Map).cast<String, dynamic>())).input()).input(),
      scalingConfig: (NodeGroupScalingConfig.fromMap((map['scalingConfig']! as Map).cast<String, dynamic>())).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      taints: map['taints'] == null ? null : ((pulumi.Input.decodeList<NodeGroupTaint>(map['taints']!, (value) => NodeGroupTaint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      updateConfig: map['updateConfig'] == null ? null : ((NodeGroupUpdateConfig.fromMap((map['updateConfig']! as Map).cast<String, dynamic>())).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

