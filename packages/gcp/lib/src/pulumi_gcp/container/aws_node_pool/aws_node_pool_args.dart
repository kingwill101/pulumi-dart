// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../aws_node_pool_autoscaling/aws_node_pool_autoscaling.dart';
import '../aws_node_pool_config/aws_node_pool_config.dart';
import '../aws_node_pool_kubelet_config/aws_node_pool_kubelet_config.dart';
import '../aws_node_pool_management/aws_node_pool_management.dart';
import '../aws_node_pool_max_pods_constraint/aws_node_pool_max_pods_constraint.dart';
import '../aws_node_pool_update_settings/aws_node_pool_update_settings.dart';

/// The set of arguments for AwsNodePool.
class AwsNodePoolArgs {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AwsNodePoolAutoscaling> autoscaling;

  /// The awsCluster for the resource
  final pulumi.Input<String> cluster;

  /// The configuration of the node pool.
  final pulumi.Input<AwsNodePoolConfig> config;

  /// The kubelet configuration for the node pool.
  final pulumi.Input<AwsNodePoolKubeletConfig>? kubeletConfig;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The Management configuration for this node pool.
  final pulumi.Input<AwsNodePoolManagement>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AwsNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// The subnet where the node pool node run.
  final pulumi.Input<String> subnetId;

  /// Optional. Update settings control the speed and disruption of the node pool update.
  final pulumi.Input<AwsNodePoolUpdateSettings>? updateSettings;

  /// The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  final pulumi.Input<String> version;

  AwsNodePoolArgs({
    this.annotations,
    required this.autoscaling,
    required this.cluster,
    required this.config,
    this.kubeletConfig,
    required this.location,
    this.management,
    required this.maxPodsConstraint,
    this.name,
    this.project,
    required this.subnetId,
    this.updateSettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['autoscaling'] = pulumi.Input.mapInputValue<AwsNodePoolAutoscaling,
        Map<String, dynamic>>(autoscaling, (value) => value.toMap());
    map['cluster'] = cluster;
    map['config'] =
        pulumi.Input.mapInputValue<AwsNodePoolConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    final kubeletConfigValue = kubeletConfig;
    if (kubeletConfigValue != null) {
      map['kubeletConfig'] = pulumi.Input.mapOptionalInputValue<
          AwsNodePoolKubeletConfig,
          Map<String, dynamic>>(kubeletConfigValue, (value) => value.toMap());
    }
    map['location'] = location;
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = pulumi.Input.mapOptionalInputValue<
          AwsNodePoolManagement,
          Map<String, dynamic>>(managementValue, (value) => value.toMap());
    }
    map['maxPodsConstraint'] = pulumi.Input.mapInputValue<
        AwsNodePoolMaxPodsConstraint,
        Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subnetId'] = subnetId;
    final updateSettingsValue = updateSettings;
    if (updateSettingsValue != null) {
      map['updateSettings'] = pulumi.Input.mapOptionalInputValue<
          AwsNodePoolUpdateSettings,
          Map<String, dynamic>>(updateSettingsValue, (value) => value.toMap());
    }
    map['version'] = version;
    return map;
  }

  factory AwsNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      autoscaling:
          pulumi.Input.asInput<AwsNodePoolAutoscaling>(map['autoscaling']),
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      config: pulumi.Input.asInput<AwsNodePoolConfig>(map['config']),
      kubeletConfig: pulumi.Input.asOptionalInput<AwsNodePoolKubeletConfig>(
          map['kubeletConfig']),
      location: pulumi.Input.asInput<String>(map['location']),
      management: pulumi.Input.asOptionalInput<AwsNodePoolManagement>(
          map['management']),
      maxPodsConstraint: pulumi.Input.asInput<AwsNodePoolMaxPodsConstraint>(
          map['maxPodsConstraint']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
      updateSettings: pulumi.Input.asOptionalInput<AwsNodePoolUpdateSettings>(
          map['updateSettings']),
      version: pulumi.Input.asInput<String>(map['version']),
    );
  }
}
