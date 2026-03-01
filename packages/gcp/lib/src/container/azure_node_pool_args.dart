// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_node_pool_autoscaling.dart';
import 'azure_node_pool_config.dart';
import 'azure_node_pool_management.dart';
import 'azure_node_pool_max_pods_constraint.dart';

/// {@template pulumi_container_azure_node_pool_azure_node_pool_args_doc}
/// The set of arguments for AzureNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_azure_node_pool_azure_node_pool_args_doc}
class AzureNodePoolArgs {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AzureNodePoolAutoscaling> autoscaling;

  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  final pulumi.Input<String>? azureAvailabilityZone;

  /// The azureCluster for the resource
  final pulumi.Input<String> cluster;

  /// The node configuration of the node pool.
  final pulumi.Input<AzureNodePoolConfig> config;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The Management configuration for this node pool.
  final pulumi.Input<AzureNodePoolManagement>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AzureNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  final pulumi.Input<String> subnetId;

  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  final pulumi.Input<String> version;

  /// Creates a new [AzureNodePoolArgs].
  /// [annotations] Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [autoscaling] Autoscaler configuration for this node pool.
  /// [azureAvailabilityZone] Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  /// [cluster] The azureCluster for the resource
  /// [config] The node configuration of the node pool.
  /// [location] The location for the resource
  /// [management] The Management configuration for this node pool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [subnetId] The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  /// [version] The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  AzureNodePoolArgs({
    Map<String, String>? annotations,
    required AzureNodePoolAutoscaling autoscaling,
    String? azureAvailabilityZone,
    required String cluster,
    required AzureNodePoolConfig config,
    required String location,
    AzureNodePoolManagement? management,
    required AzureNodePoolMaxPodsConstraint maxPodsConstraint,
    String? name,
    String? project,
    required String subnetId,
    required String version,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       autoscaling = pulumi.Input.asInput<AzureNodePoolAutoscaling>(
         autoscaling,
       ),
       azureAvailabilityZone = pulumi.Input.asOptionalInput<String>(
         azureAvailabilityZone,
       ),
       cluster = pulumi.Input.asInput<String>(cluster),
       config = pulumi.Input.asInput<AzureNodePoolConfig>(config),
       location = pulumi.Input.asInput<String>(location),
       management = pulumi.Input.asOptionalInput<AzureNodePoolManagement>(
         management,
       ),
       maxPodsConstraint = pulumi.Input.asInput<AzureNodePoolMaxPodsConstraint>(
         maxPodsConstraint,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       subnetId = pulumi.Input.asInput<String>(subnetId),
       version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'autoscaling':
          pulumi.Input.mapInputValue<
            AzureNodePoolAutoscaling,
            Map<String, dynamic>
          >(autoscaling, (value) => value.toMap()),
      'azureAvailabilityZone': ?azureAvailabilityZone,
      'cluster': cluster,
      'config':
          pulumi.Input.mapInputValue<AzureNodePoolConfig, Map<String, dynamic>>(
            config,
            (value) => value.toMap(),
          ),
      'location': location,
      'management':
          ?pulumi.Input.mapOptionalInputValue<
            AzureNodePoolManagement,
            Map<String, dynamic>
          >(management, (value) => value.toMap()),
      'maxPodsConstraint':
          pulumi.Input.mapInputValue<
            AzureNodePoolMaxPodsConstraint,
            Map<String, dynamic>
          >(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'subnetId': subnetId,
      'version': version,
    };
  }

  factory AzureNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      autoscaling: AzureNodePoolAutoscaling.fromMap(
        (map['autoscaling'] as Map).cast<String, dynamic>(),
      ),
      azureAvailabilityZone: map['azureAvailabilityZone'] == null
          ? null
          : map['azureAvailabilityZone'] as String,
      cluster: map['cluster'] as String,
      config: AzureNodePoolConfig.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
      location: map['location'] as String,
      management: map['management'] == null
          ? null
          : AzureNodePoolManagement.fromMap(
              (map['management'] as Map).cast<String, dynamic>(),
            ),
      maxPodsConstraint: AzureNodePoolMaxPodsConstraint.fromMap(
        (map['maxPodsConstraint'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      subnetId: map['subnetId'] as String,
      version: map['version'] as String,
    );
  }
}
