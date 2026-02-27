// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../azure_node_pool_autoscaling/azure_node_pool_autoscaling.dart';
import '../azure_node_pool_config/azure_node_pool_config.dart';
import '../azure_node_pool_management/azure_node_pool_management.dart';
import '../azure_node_pool_max_pods_constraint/azure_node_pool_max_pods_constraint.dart';

/// The set of arguments for AzureNodePool.
class AzureNodePoolArgs {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Autoscaler configuration for this node pool.
  final Input<AzureNodePoolAutoscaling> autoscaling;

  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  final Input<String>? azureAvailabilityZone;

  /// The azureCluster for the resource
  final Input<String> cluster;

  /// The node configuration of the node pool.
  final Input<AzureNodePoolConfig> config;

  /// The location for the resource
  final Input<String> location;

  /// The Management configuration for this node pool.
  final Input<AzureNodePoolManagement>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final Input<AzureNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  final Input<String> subnetId;

  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  final Input<String> version;

  AzureNodePoolArgs({
    this.annotations,
    required this.autoscaling,
    this.azureAvailabilityZone,
    required this.cluster,
    required this.config,
    required this.location,
    this.management,
    required this.maxPodsConstraint,
    this.name,
    this.project,
    required this.subnetId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['autoscaling'] =
        Input.mapInputValue<AzureNodePoolAutoscaling, Map<String, dynamic>>(
            autoscaling, (value) => value.toMap());
    final azureAvailabilityZoneValue = azureAvailabilityZone;
    if (azureAvailabilityZoneValue != null) {
      map['azureAvailabilityZone'] = azureAvailabilityZoneValue;
    }
    map['cluster'] = cluster;
    map['config'] =
        Input.mapInputValue<AzureNodePoolConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    map['location'] = location;
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = Input.mapOptionalInputValue<AzureNodePoolManagement,
          Map<String, dynamic>>(managementValue, (value) => value.toMap());
    }
    map['maxPodsConstraint'] = Input.mapInputValue<
        AzureNodePoolMaxPodsConstraint,
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
    map['version'] = version;
    return map;
  }

  factory AzureNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      autoscaling: Input.asInput<AzureNodePoolAutoscaling>(map['autoscaling']),
      azureAvailabilityZone:
          Input.asOptionalInput<String>(map['azureAvailabilityZone']),
      cluster: Input.asInput<String>(map['cluster']),
      config: Input.asInput<AzureNodePoolConfig>(map['config']),
      location: Input.asInput<String>(map['location']),
      management:
          Input.asOptionalInput<AzureNodePoolManagement>(map['management']),
      maxPodsConstraint: Input.asInput<AzureNodePoolMaxPodsConstraint>(
          map['maxPodsConstraint']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      subnetId: Input.asInput<String>(map['subnetId']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
