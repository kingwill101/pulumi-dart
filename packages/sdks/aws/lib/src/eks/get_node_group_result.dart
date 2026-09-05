// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_group_launch_template.dart';
import 'get_node_group_remote_access.dart';
import 'get_node_group_resource.dart';
import 'get_node_group_scaling_config.dart';
import 'get_node_group_taint.dart';
import 'get_node_group_update_config.dart';
import 'get_node_group_warm_pool_config.dart';

/// Result data returned by getNodeGroup.
class GetNodeGroupResult {
  /// Type of AMI associated with the EKS Node Group.
  final String? amiType;
  /// ARN of the EKS Node Group.
  final String? arn;
  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`.
  final String? capacityType;
  final String? clusterName;
  /// Disk size in GiB for worker nodes.
  final int? diskSize;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of instance types associated with the EKS Node Group.
  final List<String>? instanceTypes;
  /// Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  final Map<String, String>? labels;
  /// Nested attribute containing information about the launch template used to create the EKS Node Group.
  final List<GetNodeGroupLaunchTemplate>? launchTemplates;
  final String? nodeGroupName;
  /// ARN of the IAM Role that provides permissions for the EKS Node Group.
  final String? nodeRoleArn;
  final String? region;
  /// AMI version of the EKS Node Group.
  final String? releaseVersion;
  /// Configuration block with remote access settings.
  final List<GetNodeGroupRemoteAccess>? remoteAccesses;
  /// List of objects containing information about underlying resources.
  final List<GetNodeGroupResource>? resources;
  /// Configuration block with scaling settings.
  final List<GetNodeGroupScalingConfig>? scalingConfigs;
  /// Status of the EKS Node Group.
  final String? status;
  /// Identifiers of EC2 Subnets to associate with the EKS Node Group.
  final List<String>? subnetIds;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;
  /// List of objects containing information about taints applied to the nodes in the EKS Node Group.
  final List<GetNodeGroupTaint>? taints;
  final List<GetNodeGroupUpdateConfig>? updateConfigs;
  /// Kubernetes version.
  final String? version;
  /// Configuration block with EC2 Auto Scaling warm pool settings.
  final List<GetNodeGroupWarmPoolConfig>? warmPoolConfigs;

  /// Creates a new [GetNodeGroupResult].
  /// [amiType] Type of AMI associated with the EKS Node Group.
  /// [arn] ARN of the EKS Node Group.
  /// [capacityType] Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`.
  /// [clusterName] Optional.
  /// [diskSize] Disk size in GiB for worker nodes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] Set of instance types associated with the EKS Node Group.
  /// [labels] Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  /// [launchTemplates] Nested attribute containing information about the launch template used to create the EKS Node Group.
  /// [nodeGroupName] Optional.
  /// [nodeRoleArn] ARN of the IAM Role that provides permissions for the EKS Node Group.
  /// [region] Optional.
  /// [releaseVersion] AMI version of the EKS Node Group.
  /// [remoteAccesses] Configuration block with remote access settings.
  /// [resources] List of objects containing information about underlying resources.
  /// [scalingConfigs] Configuration block with scaling settings.
  /// [status] Status of the EKS Node Group.
  /// [subnetIds] Identifiers of EC2 Subnets to associate with the EKS Node Group.
  /// [tags] Key-value map of resource tags.
  /// [taints] List of objects containing information about taints applied to the nodes in the EKS Node Group.
  /// [updateConfigs] Optional.
  /// [version] Kubernetes version.
  /// [warmPoolConfigs] Configuration block with EC2 Auto Scaling warm pool settings.
  const GetNodeGroupResult({
    this.amiType,
    this.arn,
    this.capacityType,
    this.clusterName,
    this.diskSize,
    this.id,
    this.instanceTypes,
    this.labels,
    this.launchTemplates,
    this.nodeGroupName,
    this.nodeRoleArn,
    this.region,
    this.releaseVersion,
    this.remoteAccesses,
    this.resources,
    this.scalingConfigs,
    this.status,
    this.subnetIds,
    this.tags,
    this.taints,
    this.updateConfigs,
    this.version,
    this.warmPoolConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiType': ?amiType,
      'arn': ?arn,
      'capacityType': ?capacityType,
      'clusterName': ?clusterName,
      'diskSize': ?diskSize,
      'id': ?id,
      'instanceTypes': ?instanceTypes,
      'labels': ?labels,
      'launchTemplates': ?(() { final guardedValue = launchTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupLaunchTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeGroupName': ?nodeGroupName,
      'nodeRoleArn': ?nodeRoleArn,
      'region': ?region,
      'releaseVersion': ?releaseVersion,
      'remoteAccesses': ?(() { final guardedValue = remoteAccesses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupRemoteAccess, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scalingConfigs': ?(() { final guardedValue = scalingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupScalingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'taints': ?(() { final guardedValue = taints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupTaint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateConfigs': ?(() { final guardedValue = updateConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupUpdateConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'version': ?version,
      'warmPoolConfigs': ?(() { final guardedValue = warmPoolConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNodeGroupWarmPoolConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetNodeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResult(
      amiType: (() { final guardedValue = map['amiType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityType: (() { final guardedValue = map['capacityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      launchTemplates: (() { final guardedValue = map['launchTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupLaunchTemplate>(guardedValue, (value) => GetNodeGroupLaunchTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeGroupName: (() { final guardedValue = map['nodeGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeRoleArn: (() { final guardedValue = map['nodeRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseVersion: (() { final guardedValue = map['releaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteAccesses: (() { final guardedValue = map['remoteAccesses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupRemoteAccess>(guardedValue, (value) => GetNodeGroupRemoteAccess.fromMap((value as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupResource>(guardedValue, (value) => GetNodeGroupResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      scalingConfigs: (() { final guardedValue = map['scalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupScalingConfig>(guardedValue, (value) => GetNodeGroupScalingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupTaint>(guardedValue, (value) => GetNodeGroupTaint.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateConfigs: (() { final guardedValue = map['updateConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupUpdateConfig>(guardedValue, (value) => GetNodeGroupUpdateConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      warmPoolConfigs: (() { final guardedValue = map['warmPoolConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNodeGroupWarmPoolConfig>(guardedValue, (value) => GetNodeGroupWarmPoolConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
