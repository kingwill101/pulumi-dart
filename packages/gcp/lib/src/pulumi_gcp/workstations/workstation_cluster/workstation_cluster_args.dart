// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workstation_cluster_domain_config/workstation_cluster_domain_config.dart';
import '../workstation_cluster_private_cluster_config/workstation_cluster_private_cluster_config.dart';

/// The set of arguments for WorkstationCluster.
class WorkstationClusterArgs {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;

  /// Configuration options for a custom domain.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterDomainConfig>? domainConfig;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the workstation cluster should reside.
  final pulumi.Input<String>? location;

  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String> network;

  /// Configuration for private cluster.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterPrivateClusterConfig>?
      privateClusterConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  final pulumi.Input<String> subnetwork;

  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  final pulumi.Input<Map<String, String>>? tags;

  /// ID to use for the workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  WorkstationClusterArgs({
    this.annotations,
    this.displayName,
    this.domainConfig,
    this.labels,
    this.location,
    required this.network,
    this.privateClusterConfig,
    this.project,
    required this.subnetwork,
    this.tags,
    required this.workstationClusterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final domainConfigValue = domainConfig;
    if (domainConfigValue != null) {
      map['domainConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkstationClusterDomainConfig,
          Map<String, dynamic>>(domainConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['network'] = network;
    final privateClusterConfigValue = privateClusterConfig;
    if (privateClusterConfigValue != null) {
      map['privateClusterConfig'] = pulumi.Input.mapOptionalInputValue<
              WorkstationClusterPrivateClusterConfig, Map<String, dynamic>>(
          privateClusterConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subnetwork'] = subnetwork;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    return map;
  }

  factory WorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      domainConfig:
          pulumi.Input.asOptionalInput<WorkstationClusterDomainConfig>(
              map['domainConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      privateClusterConfig:
          pulumi.Input.asOptionalInput<WorkstationClusterPrivateClusterConfig>(
              map['privateClusterConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subnetwork: pulumi.Input.asInput<String>(map['subnetwork']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
    );
  }
}
