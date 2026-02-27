// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_group_launch_template/node_group_launch_template.dart';
import '../node_group_node_repair_config/node_group_node_repair_config.dart';
import '../node_group_remote_access/node_group_remote_access.dart';
import '../node_group_scaling_config/node_group_scaling_config.dart';
import '../node_group_taint/node_group_taint.dart';
import '../node_group_update_config/node_group_update_config.dart';

/// The set of arguments for NodeGroup.
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
    final map = <String, dynamic>{};
    final amiTypeValue = amiType;
    if (amiTypeValue != null) {
      map['amiType'] = amiTypeValue;
    }
    final capacityTypeValue = capacityType;
    if (capacityTypeValue != null) {
      map['capacityType'] = capacityTypeValue;
    }
    map['clusterName'] = clusterName;
    final diskSizeValue = diskSize;
    if (diskSizeValue != null) {
      map['diskSize'] = diskSizeValue;
    }
    final forceUpdateVersionValue = forceUpdateVersion;
    if (forceUpdateVersionValue != null) {
      map['forceUpdateVersion'] = forceUpdateVersionValue;
    }
    final instanceTypesValue = instanceTypes;
    if (instanceTypesValue != null) {
      map['instanceTypes'] = instanceTypesValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final launchTemplateValue = launchTemplate;
    if (launchTemplateValue != null) {
      map['launchTemplate'] = pulumi.Input.mapOptionalInputValue<
          NodeGroupLaunchTemplate,
          Map<String, dynamic>>(launchTemplateValue, (value) => value.toMap());
    }
    final nodeGroupNameValue = nodeGroupName;
    if (nodeGroupNameValue != null) {
      map['nodeGroupName'] = nodeGroupNameValue;
    }
    final nodeGroupNamePrefixValue = nodeGroupNamePrefix;
    if (nodeGroupNamePrefixValue != null) {
      map['nodeGroupNamePrefix'] = nodeGroupNamePrefixValue;
    }
    final nodeRepairConfigValue = nodeRepairConfig;
    if (nodeRepairConfigValue != null) {
      map['nodeRepairConfig'] = pulumi.Input.mapOptionalInputValue<
              NodeGroupNodeRepairConfig, Map<String, dynamic>>(
          nodeRepairConfigValue, (value) => value.toMap());
    }
    map['nodeRoleArn'] = nodeRoleArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final releaseVersionValue = releaseVersion;
    if (releaseVersionValue != null) {
      map['releaseVersion'] = releaseVersionValue;
    }
    final remoteAccessValue = remoteAccess;
    if (remoteAccessValue != null) {
      map['remoteAccess'] = pulumi.Input.mapOptionalInputValue<
          NodeGroupRemoteAccess,
          Map<String, dynamic>>(remoteAccessValue, (value) => value.toMap());
    }
    map['scalingConfig'] = pulumi.Input.mapInputValue<NodeGroupScalingConfig,
        Map<String, dynamic>>(scalingConfig, (value) => value.toMap());
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = pulumi.Input.mapOptionalInputValue<List<NodeGroupTaint>,
              List<Map<String, dynamic>>>(
          taintsValue,
          (value) =>
              pulumi.Input.encodeList<NodeGroupTaint, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final updateConfigValue = updateConfig;
    if (updateConfigValue != null) {
      map['updateConfig'] = pulumi.Input.mapOptionalInputValue<
          NodeGroupUpdateConfig,
          Map<String, dynamic>>(updateConfigValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      amiType: pulumi.Input.asOptionalInput<String>(map['amiType']),
      capacityType: pulumi.Input.asOptionalInput<String>(map['capacityType']),
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      diskSize: pulumi.Input.asOptionalInput<int>(map['diskSize']),
      forceUpdateVersion:
          pulumi.Input.asOptionalInput<bool>(map['forceUpdateVersion']),
      instanceTypes:
          pulumi.Input.asOptionalInput<List<String>>(map['instanceTypes']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchTemplate: pulumi.Input.asOptionalInput<NodeGroupLaunchTemplate>(
          map['launchTemplate']),
      nodeGroupName: pulumi.Input.asOptionalInput<String>(map['nodeGroupName']),
      nodeGroupNamePrefix:
          pulumi.Input.asOptionalInput<String>(map['nodeGroupNamePrefix']),
      nodeRepairConfig: pulumi.Input.asOptionalInput<NodeGroupNodeRepairConfig>(
          map['nodeRepairConfig']),
      nodeRoleArn: pulumi.Input.asInput<String>(map['nodeRoleArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      releaseVersion:
          pulumi.Input.asOptionalInput<String>(map['releaseVersion']),
      remoteAccess: pulumi.Input.asOptionalInput<NodeGroupRemoteAccess>(
          map['remoteAccess']),
      scalingConfig:
          pulumi.Input.asInput<NodeGroupScalingConfig>(map['scalingConfig']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      taints: pulumi.Input.asOptionalInput<List<NodeGroupTaint>>(map['taints']),
      updateConfig: pulumi.Input.asOptionalInput<NodeGroupUpdateConfig>(
          map['updateConfig']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
