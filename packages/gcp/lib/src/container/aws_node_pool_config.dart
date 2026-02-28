// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_config_autoscaling_metrics_collection.dart';
import 'aws_node_pool_config_config_encryption.dart';
import 'aws_node_pool_config_instance_placement.dart';
import 'aws_node_pool_config_proxy_config.dart';
import 'aws_node_pool_config_root_volume.dart';
import 'aws_node_pool_config_spot_config.dart';
import 'aws_node_pool_config_ssh_config.dart';
import 'aws_node_pool_config_taint.dart';

class AwsNodePoolConfig {
  /// Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
  final AwsNodePoolConfigAutoscalingMetricsCollection?
      autoscalingMetricsCollection;

  /// The ARN of the AWS KMS key used to encrypt node pool configuration.
  final AwsNodePoolConfigConfigEncryption configEncryption;

  /// The name of the AWS IAM role assigned to nodes in the pool.
  final String iamInstanceProfile;

  /// The OS image type to use on node pool instances.
  final String? imageType;

  /// Details of placement information for an instance.
  final AwsNodePoolConfigInstancePlacement? instancePlacement;

  /// Optional. The AWS instance type. When unspecified, it defaults to `m5.large`.
  final String? instanceType;

  /// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;

  /// Proxy configuration for outbound HTTP(S) traffic.
  final AwsNodePoolConfigProxyConfig? proxyConfig;

  /// Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
  final AwsNodePoolConfigRootVolume? rootVolume;

  /// Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
  final List<String>? securityGroupIds;

  /// Optional. When specified, the node pool will provision Spot instances from the set of spot_config.instance_types. This field is mutually exclusive with `instance_type`
  final AwsNodePoolConfigSpotConfig? spotConfig;

  /// Optional. The SSH configuration.
  final AwsNodePoolConfigSshConfig? sshConfig;

  /// Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  final Map<String, String>? tags;

  /// Optional. The initial taints assigned to nodes of this node pool.
  final List<AwsNodePoolConfigTaint>? taints;

  /// Creates a new [AwsNodePoolConfig].
  /// [autoscalingMetricsCollection] Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
  /// [configEncryption] The ARN of the AWS KMS key used to encrypt node pool configuration.
  /// [iamInstanceProfile] The name of the AWS IAM role assigned to nodes in the pool.
  /// [imageType] The OS image type to use on node pool instances.
  /// [instancePlacement] Details of placement information for an instance.
  /// [instanceType] Optional. The AWS instance type. When unspecified, it defaults to `m5.large`.
  /// [labels] Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [proxyConfig] Proxy configuration for outbound HTTP(S) traffic.
  /// [rootVolume] Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
  /// [securityGroupIds] Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
  /// [spotConfig] Optional. When specified, the node pool will provision Spot instances from the set of spot_config.instance_types. This field is mutually exclusive with `instance_type`
  /// [sshConfig] Optional. The SSH configuration.
  /// [tags] Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  /// [taints] Optional. The initial taints assigned to nodes of this node pool.
  AwsNodePoolConfig({
    this.autoscalingMetricsCollection,
    required this.configEncryption,
    required this.iamInstanceProfile,
    this.imageType,
    this.instancePlacement,
    this.instanceType,
    this.labels,
    this.proxyConfig,
    this.rootVolume,
    this.securityGroupIds,
    this.spotConfig,
    this.sshConfig,
    this.tags,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingMetricsCollectionValue = autoscalingMetricsCollection;
    if (autoscalingMetricsCollectionValue != null) {
      map['autoscalingMetricsCollection'] =
          autoscalingMetricsCollectionValue.toMap();
    }
    map['configEncryption'] = configEncryption.toMap();
    map['iamInstanceProfile'] = iamInstanceProfile;
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
    }
    final instancePlacementValue = instancePlacement;
    if (instancePlacementValue != null) {
      map['instancePlacement'] = instancePlacementValue.toMap();
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final proxyConfigValue = proxyConfig;
    if (proxyConfigValue != null) {
      map['proxyConfig'] = proxyConfigValue.toMap();
    }
    final rootVolumeValue = rootVolume;
    if (rootVolumeValue != null) {
      map['rootVolume'] = rootVolumeValue.toMap();
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final spotConfigValue = spotConfig;
    if (spotConfigValue != null) {
      map['spotConfig'] = spotConfigValue.toMap();
    }
    final sshConfigValue = sshConfig;
    if (sshConfigValue != null) {
      map['sshConfig'] = sshConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] =
          pulumi.Input.encodeList<AwsNodePoolConfigTaint, Map<String, dynamic>>(
              taintsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AwsNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfig(
      autoscalingMetricsCollection: map['autoscalingMetricsCollection'] == null
          ? null
          : AwsNodePoolConfigAutoscalingMetricsCollection.fromMap(
              (map['autoscalingMetricsCollection'] as Map)
                  .cast<String, dynamic>()),
      configEncryption: AwsNodePoolConfigConfigEncryption.fromMap(
          (map['configEncryption'] as Map).cast<String, dynamic>()),
      iamInstanceProfile: map['iamInstanceProfile'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      instancePlacement: map['instancePlacement'] == null
          ? null
          : AwsNodePoolConfigInstancePlacement.fromMap(
              (map['instancePlacement'] as Map).cast<String, dynamic>()),
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      proxyConfig: map['proxyConfig'] == null
          ? null
          : AwsNodePoolConfigProxyConfig.fromMap(
              (map['proxyConfig'] as Map).cast<String, dynamic>()),
      rootVolume: map['rootVolume'] == null
          ? null
          : AwsNodePoolConfigRootVolume.fromMap(
              (map['rootVolume'] as Map).cast<String, dynamic>()),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      spotConfig: map['spotConfig'] == null
          ? null
          : AwsNodePoolConfigSpotConfig.fromMap(
              (map['spotConfig'] as Map).cast<String, dynamic>()),
      sshConfig: map['sshConfig'] == null
          ? null
          : AwsNodePoolConfigSshConfig.fromMap(
              (map['sshConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taints: map['taints'] == null
          ? null
          : pulumi.Input.decodeList<AwsNodePoolConfigTaint>(
              map['taints'],
              (value) => AwsNodePoolConfigTaint.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
