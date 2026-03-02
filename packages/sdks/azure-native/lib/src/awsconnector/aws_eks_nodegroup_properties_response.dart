// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_specification_response.dart';
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
  final pulumi.Input<LaunchTemplateSpecificationResponse>? launchTemplate;
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
  AwsEksNodegroupPropertiesResponse({
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
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateSpecificationResponse, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
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
      amiType: map['amiType'] == null ? null : (map['amiType']! as String).input(),
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      capacityType: map['capacityType'] == null ? null : (map['capacityType']! as String).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize']! as int).input(),
      forceUpdateEnabled: map['forceUpdateEnabled'] == null ? null : (map['forceUpdateEnabled']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      instanceTypes: map['instanceTypes'] == null ? null : ((map['instanceTypes']! as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      launchTemplate: map['launchTemplate'] == null ? null : (LaunchTemplateSpecificationResponse.fromMap((map['launchTemplate']! as Map).cast<String, dynamic>())).input(),
      nodeRole: map['nodeRole'] == null ? null : (map['nodeRole']! as String).input(),
      nodegroupName: map['nodegroupName'] == null ? null : (map['nodegroupName']! as String).input(),
      releaseVersion: map['releaseVersion'] == null ? null : (map['releaseVersion']! as String).input(),
      remoteAccess: map['remoteAccess'] == null ? null : (RemoteAccessResponse.fromMap((map['remoteAccess']! as Map).cast<String, dynamic>())).input(),
      scalingConfig: map['scalingConfig'] == null ? null : (ScalingConfigResponse.fromMap((map['scalingConfig']! as Map).cast<String, dynamic>())).input(),
      subnets: map['subnets'] == null ? null : ((map['subnets']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<TaintResponse>(map['taints']!, (value) => TaintResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateConfig: map['updateConfig'] == null ? null : (UpdateConfigResponse.fromMap((map['updateConfig']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

