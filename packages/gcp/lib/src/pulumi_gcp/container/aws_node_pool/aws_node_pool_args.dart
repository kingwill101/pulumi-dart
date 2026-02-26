// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Autoscaler configuration for this node pool.
  final Input<AwsNodePoolAutoscaling> autoscaling;

  /// The awsCluster for the resource
  final Input<String> cluster;

  /// The configuration of the node pool.
  final Input<AwsNodePoolConfig> config;

  /// The kubelet configuration for the node pool.
  final Input<AwsNodePoolKubeletConfig>? kubeletConfig;

  /// The location for the resource
  final Input<String> location;

  /// The Management configuration for this node pool.
  final Input<AwsNodePoolManagement>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final Input<AwsNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// The subnet where the node pool node run.
  final Input<String> subnetId;

  /// Optional. Update settings control the speed and disruption of the node pool update.
  final Input<AwsNodePoolUpdateSettings>? updateSettings;

  /// The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  final Input<String> version;

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
    map['autoscaling'] =
        Input.mapInputValue<AwsNodePoolAutoscaling, Map<String, dynamic>>(
            autoscaling, (value) => value.toMap());
    map['cluster'] = cluster;
    map['config'] =
        Input.mapInputValue<AwsNodePoolConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    final kubeletConfigValue = kubeletConfig;
    if (kubeletConfigValue != null) {
      map['kubeletConfig'] = Input.mapOptionalInputValue<
          AwsNodePoolKubeletConfig,
          Map<String, dynamic>>(kubeletConfigValue, (value) => value.toMap());
    }
    map['location'] = location;
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = Input.mapOptionalInputValue<AwsNodePoolManagement,
          Map<String, dynamic>>(managementValue, (value) => value.toMap());
    }
    map['maxPodsConstraint'] =
        Input.mapInputValue<AwsNodePoolMaxPodsConstraint, Map<String, dynamic>>(
            maxPodsConstraint, (value) => value.toMap());
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
      map['updateSettings'] = Input.mapOptionalInputValue<
          AwsNodePoolUpdateSettings,
          Map<String, dynamic>>(updateSettingsValue, (value) => value.toMap());
    }
    map['version'] = version;
    return map;
  }

  factory AwsNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      autoscaling: Input.asInput<AwsNodePoolAutoscaling>(map['autoscaling']),
      cluster: Input.asInput<String>(map['cluster']),
      config: Input.asInput<AwsNodePoolConfig>(map['config']),
      kubeletConfig:
          Input.asOptionalInput<AwsNodePoolKubeletConfig>(map['kubeletConfig']),
      location: Input.asInput<String>(map['location']),
      management:
          Input.asOptionalInput<AwsNodePoolManagement>(map['management']),
      maxPodsConstraint:
          Input.asInput<AwsNodePoolMaxPodsConstraint>(map['maxPodsConstraint']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      subnetId: Input.asInput<String>(map['subnetId']),
      updateSettings: Input.asOptionalInput<AwsNodePoolUpdateSettings>(
          map['updateSettings']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
