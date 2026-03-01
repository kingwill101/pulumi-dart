// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_launch_template.dart';
import 'node_group_node_repair_config.dart';
import 'node_group_remote_access.dart';
import 'node_group_resource.dart';
import 'node_group_scaling_config.dart';
import 'node_group_taint.dart';
import 'node_group_update_config.dart';

/// Input properties used for looking up and filtering NodeGroup resources.
class NodeGroupState {
  /// Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the [AWS documentation](https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid values. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? amiType;
  /// Amazon Resource Name (ARN) of the EKS Node Group.
  final pulumi.Input<String>? arn;
  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? capacityType;
  /// Name of the EKS Cluster.
  final pulumi.Input<String>? clusterName;
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
  final pulumi.Input<String>? nodeRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  final pulumi.Input<String>? releaseVersion;
  /// Configuration block with remote access settings. See `remote_access` below for details. Conflicts with `launch_template`.
  final pulumi.Input<NodeGroupRemoteAccess>? remoteAccess;
  /// List of objects containing information about underlying resources.
  final pulumi.Input<List<NodeGroupResource>>? resources;
  /// Configuration block with scaling settings. See `scaling_config` below for details.
  final pulumi.Input<NodeGroupScalingConfig>? scalingConfig;
  /// Status of the EKS Node Group.
  final pulumi.Input<String>? status;
  /// Identifiers of EC2 Subnets to associate with the EKS Node Group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
  final pulumi.Input<List<NodeGroupTaint>>? taints;
  /// Configuration block with update settings. See `update_config` below for details.
  final pulumi.Input<NodeGroupUpdateConfig>? updateConfig;
  /// Kubernetes version. Defaults to EKS Cluster Kubernetes version. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? version;

  /// Creates a new [NodeGroupState].
  /// [amiType] Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the [AWS documentation](https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid values. This provider will only perform drift detection if a configuration value is provided.
  /// [arn] Amazon Resource Name (ARN) of the EKS Node Group.
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
  /// [resources] List of objects containing information about underlying resources.
  /// [scalingConfig] Configuration block with scaling settings. See `scaling_config` below for details.
  /// [status] Status of the EKS Node Group.
  /// [subnetIds] Identifiers of EC2 Subnets to associate with the EKS Node Group.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taints] The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
  /// [updateConfig] Configuration block with update settings. See `update_config` below for details.
  /// [version] Kubernetes version. Defaults to EKS Cluster Kubernetes version. The provider will only perform drift detection if a configuration value is provided.
  NodeGroupState({
    pulumi.Output<String>? amiType,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? capacityType,
    pulumi.Output<String>? clusterName,
    pulumi.Output<int>? diskSize,
    pulumi.Output<bool>? forceUpdateVersion,
    pulumi.Output<List<String>>? instanceTypes,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<NodeGroupLaunchTemplate>? launchTemplate,
    pulumi.Output<String>? nodeGroupName,
    pulumi.Output<String>? nodeGroupNamePrefix,
    pulumi.Output<NodeGroupNodeRepairConfig>? nodeRepairConfig,
    pulumi.Output<String>? nodeRoleArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? releaseVersion,
    pulumi.Output<NodeGroupRemoteAccess>? remoteAccess,
    pulumi.Output<List<NodeGroupResource>>? resources,
    pulumi.Output<NodeGroupScalingConfig>? scalingConfig,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<NodeGroupTaint>>? taints,
    pulumi.Output<NodeGroupUpdateConfig>? updateConfig,
    pulumi.Output<String>? version,
  }) :
      amiType = pulumi.Input.asOptionalInput<String>(amiType),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      capacityType = pulumi.Input.asOptionalInput<String>(capacityType),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      forceUpdateVersion = pulumi.Input.asOptionalInput<bool>(forceUpdateVersion),
      instanceTypes = pulumi.Input.asOptionalInput<List<String>>(instanceTypes),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      launchTemplate = pulumi.Input.asOptionalInput<NodeGroupLaunchTemplate>(launchTemplate),
      nodeGroupName = pulumi.Input.asOptionalInput<String>(nodeGroupName),
      nodeGroupNamePrefix = pulumi.Input.asOptionalInput<String>(nodeGroupNamePrefix),
      nodeRepairConfig = pulumi.Input.asOptionalInput<NodeGroupNodeRepairConfig>(nodeRepairConfig),
      nodeRoleArn = pulumi.Input.asOptionalInput<String>(nodeRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      releaseVersion = pulumi.Input.asOptionalInput<String>(releaseVersion),
      remoteAccess = pulumi.Input.asOptionalInput<NodeGroupRemoteAccess>(remoteAccess),
      resources = pulumi.Input.asOptionalInput<List<NodeGroupResource>>(resources),
      scalingConfig = pulumi.Input.asOptionalInput<NodeGroupScalingConfig>(scalingConfig),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      taints = pulumi.Input.asOptionalInput<List<NodeGroupTaint>>(taints),
      updateConfig = pulumi.Input.asOptionalInput<NodeGroupUpdateConfig>(updateConfig),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiType': ?amiType,
      'arn': ?arn,
      'capacityType': ?capacityType,
      'clusterName': ?clusterName,
      'diskSize': ?diskSize,
      'forceUpdateVersion': ?forceUpdateVersion,
      'instanceTypes': ?instanceTypes,
      'labels': ?labels,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<NodeGroupLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'nodeGroupName': ?nodeGroupName,
      'nodeGroupNamePrefix': ?nodeGroupNamePrefix,
      'nodeRepairConfig': ?pulumi.Input.mapOptionalInputValue<NodeGroupNodeRepairConfig, Map<String, dynamic>>(nodeRepairConfig, (value) => value.toMap()),
      'nodeRoleArn': ?nodeRoleArn,
      'region': ?region,
      'releaseVersion': ?releaseVersion,
      'remoteAccess': ?pulumi.Input.mapOptionalInputValue<NodeGroupRemoteAccess, Map<String, dynamic>>(remoteAccess, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<NodeGroupResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<NodeGroupScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'status': ?status,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeGroupTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateConfig': ?pulumi.Input.mapOptionalInputValue<NodeGroupUpdateConfig, Map<String, dynamic>>(updateConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NodeGroupState.fromMap(Map<String, dynamic> map) {
    return NodeGroupState(
      amiType: map['amiType'] == null ? null : pulumi.Output.create<String>(map['amiType'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capacityType: map['capacityType'] == null ? null : pulumi.Output.create<String>(map['capacityType'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      diskSize: map['diskSize'] == null ? null : pulumi.Output.create<int>(map['diskSize'] as int),
      forceUpdateVersion: map['forceUpdateVersion'] == null ? null : pulumi.Output.create<bool>(map['forceUpdateVersion'] as bool),
      instanceTypes: map['instanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['instanceTypes'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      launchTemplate: map['launchTemplate'] == null ? null : pulumi.Output.create<NodeGroupLaunchTemplate>(NodeGroupLaunchTemplate.fromMap((map['launchTemplate'] as Map).cast<String, dynamic>())),
      nodeGroupName: map['nodeGroupName'] == null ? null : pulumi.Output.create<String>(map['nodeGroupName'] as String),
      nodeGroupNamePrefix: map['nodeGroupNamePrefix'] == null ? null : pulumi.Output.create<String>(map['nodeGroupNamePrefix'] as String),
      nodeRepairConfig: map['nodeRepairConfig'] == null ? null : pulumi.Output.create<NodeGroupNodeRepairConfig>(NodeGroupNodeRepairConfig.fromMap((map['nodeRepairConfig'] as Map).cast<String, dynamic>())),
      nodeRoleArn: map['nodeRoleArn'] == null ? null : pulumi.Output.create<String>(map['nodeRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      releaseVersion: map['releaseVersion'] == null ? null : pulumi.Output.create<String>(map['releaseVersion'] as String),
      remoteAccess: map['remoteAccess'] == null ? null : pulumi.Output.create<NodeGroupRemoteAccess>(NodeGroupRemoteAccess.fromMap((map['remoteAccess'] as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<NodeGroupResource>>(pulumi.Input.decodeList<NodeGroupResource>(map['resources'], (value) => NodeGroupResource.fromMap((value as Map).cast<String, dynamic>()))),
      scalingConfig: map['scalingConfig'] == null ? null : pulumi.Output.create<NodeGroupScalingConfig>(NodeGroupScalingConfig.fromMap((map['scalingConfig'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      taints: map['taints'] == null ? null : pulumi.Output.create<List<NodeGroupTaint>>(pulumi.Input.decodeList<NodeGroupTaint>(map['taints'], (value) => NodeGroupTaint.fromMap((value as Map).cast<String, dynamic>()))),
      updateConfig: map['updateConfig'] == null ? null : pulumi.Output.create<NodeGroupUpdateConfig>(NodeGroupUpdateConfig.fromMap((map['updateConfig'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

