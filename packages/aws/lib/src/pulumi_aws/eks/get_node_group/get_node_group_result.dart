// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_node_group_launch_template/get_node_group_launch_template.dart';
import '../get_node_group_remote_access/get_node_group_remote_access.dart';
import '../get_node_group_resource/get_node_group_resource.dart';
import '../get_node_group_scaling_config/get_node_group_scaling_config.dart';
import '../get_node_group_taint/get_node_group_taint.dart';
import '../get_node_group_update_config/get_node_group_update_config.dart';

/// Result data returned by getNodeGroup.
class GetNodeGroupResult {
  /// Type of Amazon Machine Image (AMI) associated with the EKS Node Group.
  final String amiType;

  /// ARN of the EKS Node Group.
  final String arn;

  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`.
  final String capacityType;
  final String clusterName;

  /// Disk size in GiB for worker nodes.
  final int diskSize;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of instance types associated with the EKS Node Group.
  final List<String> instanceTypes;

  /// Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  final Map<String, String> labels;

  /// Nested attribute containing information about the launch template used to create the EKS Node Group.
  final List<GetNodeGroupLaunchTemplate> launchTemplates;
  final String nodeGroupName;

  /// ARN of the IAM Role that provides permissions for the EKS Node Group.
  final String nodeRoleArn;
  final String region;

  /// AMI version of the EKS Node Group.
  final String releaseVersion;

  /// Configuration block with remote access settings.
  final List<GetNodeGroupRemoteAccess> remoteAccesses;

  /// List of objects containing information about underlying resources.
  final List<GetNodeGroupResource> resources;

  /// Configuration block with scaling settings.
  final List<GetNodeGroupScalingConfig> scalingConfigs;

  /// Status of the EKS Node Group.
  final String status;

  /// Identifiers of EC2 Subnets to associate with the EKS Node Group.
  final List<String> subnetIds;

  /// Key-value map of resource tags.
  final Map<String, String> tags;

  /// List of objects containing information about taints applied to the nodes in the EKS Node Group.
  final List<GetNodeGroupTaint> taints;
  final List<GetNodeGroupUpdateConfig> updateConfigs;

  /// Kubernetes version.
  final String version;

  GetNodeGroupResult({
    required this.amiType,
    required this.arn,
    required this.capacityType,
    required this.clusterName,
    required this.diskSize,
    required this.id,
    required this.instanceTypes,
    required this.labels,
    required this.launchTemplates,
    required this.nodeGroupName,
    required this.nodeRoleArn,
    required this.region,
    required this.releaseVersion,
    required this.remoteAccesses,
    required this.resources,
    required this.scalingConfigs,
    required this.status,
    required this.subnetIds,
    required this.tags,
    required this.taints,
    required this.updateConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amiType'] = amiType;
    map['arn'] = arn;
    map['capacityType'] = capacityType;
    map['clusterName'] = clusterName;
    map['diskSize'] = diskSize;
    map['id'] = id;
    map['instanceTypes'] = instanceTypes;
    map['labels'] = labels;
    map['launchTemplates'] = pulumi.Input.encodeList<GetNodeGroupLaunchTemplate,
        Map<String, dynamic>>(launchTemplates, (value) => value.toMap());
    map['nodeGroupName'] = nodeGroupName;
    map['nodeRoleArn'] = nodeRoleArn;
    map['region'] = region;
    map['releaseVersion'] = releaseVersion;
    map['remoteAccesses'] =
        pulumi.Input.encodeList<GetNodeGroupRemoteAccess, Map<String, dynamic>>(
            remoteAccesses, (value) => value.toMap());
    map['resources'] =
        pulumi.Input.encodeList<GetNodeGroupResource, Map<String, dynamic>>(
            resources, (value) => value.toMap());
    map['scalingConfigs'] = pulumi.Input.encodeList<GetNodeGroupScalingConfig,
        Map<String, dynamic>>(scalingConfigs, (value) => value.toMap());
    map['status'] = status;
    map['subnetIds'] = subnetIds;
    map['tags'] = tags;
    map['taints'] =
        pulumi.Input.encodeList<GetNodeGroupTaint, Map<String, dynamic>>(
            taints, (value) => value.toMap());
    map['updateConfigs'] =
        pulumi.Input.encodeList<GetNodeGroupUpdateConfig, Map<String, dynamic>>(
            updateConfigs, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory GetNodeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResult(
      amiType: map['amiType'] as String,
      arn: map['arn'] as String,
      capacityType: map['capacityType'] as String,
      clusterName: map['clusterName'] as String,
      diskSize: map['diskSize'] as int,
      id: map['id'] as String,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      launchTemplates: pulumi.Input.decodeList<GetNodeGroupLaunchTemplate>(
          map['launchTemplates'],
          (value) => GetNodeGroupLaunchTemplate.fromMap(
              (value as Map).cast<String, dynamic>())),
      nodeGroupName: map['nodeGroupName'] as String,
      nodeRoleArn: map['nodeRoleArn'] as String,
      region: map['region'] as String,
      releaseVersion: map['releaseVersion'] as String,
      remoteAccesses: pulumi.Input.decodeList<GetNodeGroupRemoteAccess>(
          map['remoteAccesses'],
          (value) => GetNodeGroupRemoteAccess.fromMap(
              (value as Map).cast<String, dynamic>())),
      resources: pulumi.Input.decodeList<GetNodeGroupResource>(
          map['resources'],
          (value) => GetNodeGroupResource.fromMap(
              (value as Map).cast<String, dynamic>())),
      scalingConfigs: pulumi.Input.decodeList<GetNodeGroupScalingConfig>(
          map['scalingConfigs'],
          (value) => GetNodeGroupScalingConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      taints: pulumi.Input.decodeList<GetNodeGroupTaint>(
          map['taints'],
          (value) => GetNodeGroupTaint.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateConfigs: pulumi.Input.decodeList<GetNodeGroupUpdateConfig>(
          map['updateConfigs'],
          (value) => GetNodeGroupUpdateConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}
