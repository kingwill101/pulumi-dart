// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_specification_eks_nodegroup_response.dart';
import 'remote_access_response.dart';
import 'scaling_config_response.dart';
import 'taint_response.dart';
import 'update_config_response.dart';

/// Definition of awsEksNodegroup
class AwsEksNodegroupPropertiesResponse {
  /// The AMI type for your node group.
  final pulumi.Input<String>? amiType;
  /// Property arn
  final pulumi.Input<String>? arn;
  /// The capacity type of your managed node group.
  final pulumi.Input<String>? capacityType;
  /// Name of the cluster to create the node group in.
  final pulumi.Input<String>? clusterName;
  /// The root device disk size (in GiB) for your node group instances.
  final pulumi.Input<int>? diskSize;
  /// Force the update if the existing node group's pods are unable to be drained due to a pod disruption budget issue.
  final pulumi.Input<bool>? forceUpdateEnabled;
  /// Property id
  final pulumi.Input<String>? id;
  /// Specify the instance types for a node group.
  final pulumi.Input<List<String>>? instanceTypes;
  /// The Kubernetes labels to be applied to the nodes in the node group when they are created.
  final pulumi.Input<Map<String, String>>? labels;
  /// An object representing a node group's launch template specification. An object representing a launch template specification for AWS EKS Nodegroup.
  final pulumi.Input<LaunchTemplateSpecificationEksNodegroupResponse>? launchTemplate;
  /// The Amazon Resource Name (ARN) of the IAM role to associate with your node group.
  final pulumi.Input<String>? nodeRole;
  /// The unique name to give your node group.
  final pulumi.Input<String>? nodegroupName;
  /// The AMI version of the Amazon EKS-optimized AMI to use with your node group.
  final pulumi.Input<String>? releaseVersion;
  /// The remote access (SSH) configuration to use with your node group. An object representing a remote access configuration specification for AWS EKS Nodegroup.
  final pulumi.Input<RemoteAccessResponse>? remoteAccess;
  /// The scaling configuration details for the Auto Scaling group that is created for your node group. An object representing a auto scaling group specification for AWS EKS Nodegroup.
  final pulumi.Input<ScalingConfigResponse>? scalingConfig;
  /// The subnets to use for the Auto Scaling group that is created for your node group.
  final pulumi.Input<List<String>>? subnets;
  /// The metadata, as key-value pairs, to apply to the node group to assist with categorization and organization. Follows same schema as Labels for consistency.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Kubernetes taints to be applied to the nodes in the node group when they are created.
  final pulumi.Input<List<TaintResponse>>? taints;
  /// The node group update configuration. The node group update configuration.
  final pulumi.Input<UpdateConfigResponse>? updateConfig;
  /// The Kubernetes version to use for your managed nodes.
  final pulumi.Input<String>? version;

  /// Creates a new [AwsEksNodegroupPropertiesResponse].
  /// [amiType] The AMI type for your node group.
  /// [arn] Property arn
  /// [capacityType] The capacity type of your managed node group.
  /// [clusterName] Name of the cluster to create the node group in.
  /// [diskSize] The root device disk size (in GiB) for your node group instances.
  /// [forceUpdateEnabled] Force the update if the existing node group's pods are unable to be drained due to a pod disruption budget issue.
  /// [id] Property id
  /// [instanceTypes] Specify the instance types for a node group.
  /// [labels] The Kubernetes labels to be applied to the nodes in the node group when they are created.
  /// [launchTemplate] An object representing a node group's launch template specification. An object representing a launch template specification for AWS EKS Nodegroup.
  /// [nodeRole] The Amazon Resource Name (ARN) of the IAM role to associate with your node group.
  /// [nodegroupName] The unique name to give your node group.
  /// [releaseVersion] The AMI version of the Amazon EKS-optimized AMI to use with your node group.
  /// [remoteAccess] The remote access (SSH) configuration to use with your node group. An object representing a remote access configuration specification for AWS EKS Nodegroup.
  /// [scalingConfig] The scaling configuration details for the Auto Scaling group that is created for your node group. An object representing a auto scaling group specification for AWS EKS Nodegroup.
  /// [subnets] The subnets to use for the Auto Scaling group that is created for your node group.
  /// [tags] The metadata, as key-value pairs, to apply to the node group to assist with categorization and organization. Follows same schema as Labels for consistency.
  /// [taints] The Kubernetes taints to be applied to the nodes in the node group when they are created.
  /// [updateConfig] The node group update configuration. The node group update configuration.
  /// [version] The Kubernetes version to use for your managed nodes.
  const AwsEksNodegroupPropertiesResponse({
    this.amiType,
    this.arn,
    this.capacityType,
    this.clusterName,
    this.diskSize,
    this.forceUpdateEnabled,
    this.id,
    this.instanceTypes,
    this.labels,
    this.launchTemplate,
    this.nodeRole,
    this.nodegroupName,
    this.releaseVersion,
    this.remoteAccess,
    this.scalingConfig,
    this.subnets,
    this.tags,
    this.taints,
    this.updateConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiType': ?amiType,
      'arn': ?arn,
      'capacityType': ?capacityType,
      'clusterName': ?clusterName,
      'diskSize': ?diskSize,
      'forceUpdateEnabled': ?forceUpdateEnabled,
      'id': ?id,
      'instanceTypes': ?instanceTypes,
      'labels': ?labels,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateSpecificationEksNodegroupResponse, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'nodeRole': ?nodeRole,
      'nodegroupName': ?nodegroupName,
      'releaseVersion': ?releaseVersion,
      'remoteAccess': ?pulumi.Input.mapOptionalInputValue<RemoteAccessResponse, Map<String, dynamic>>(remoteAccess, (value) => value.toMap()),
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<ScalingConfigResponse, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'subnets': ?subnets,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<TaintResponse>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<TaintResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateConfig': ?pulumi.Input.mapOptionalInputValue<UpdateConfigResponse, Map<String, dynamic>>(updateConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory AwsEksNodegroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEksNodegroupPropertiesResponse(
      amiType: (() { final guardedValue = map['amiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityType: (() { final guardedValue = map['capacityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      forceUpdateEnabled: (() { final guardedValue = map['forceUpdateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateSpecificationEksNodegroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeRole: (() { final guardedValue = map['nodeRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodegroupName: (() { final guardedValue = map['nodegroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseVersion: (() { final guardedValue = map['releaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAccess: (() { final guardedValue = map['remoteAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemoteAccessResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingConfig: (() { final guardedValue = map['scalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScalingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaintResponse>(guardedValue, (value) => TaintResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateConfig: (() { final guardedValue = map['updateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpdateConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
