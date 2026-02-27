// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config.dart';
import 'private_cluster_config_workstations_v1beta.dart';

/// The set of arguments for WorkstationCluster.
class WorkstationClusterWorkstationsV1betaArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Human-readable name for this workstation cluster.
  final pulumi.Input<String>? displayName;

  /// Optional. Configuration options for a custom domain.
  final pulumi.Input<DomainConfig>? domainConfig;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Identifier. Full name of this workstation cluster.
  final pulumi.Input<String>? name;

  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  final pulumi.Input<String>? network;

  /// Optional. Configuration for private workstation cluster.
  final pulumi.Input<PrivateClusterConfigWorkstationsV1beta>?
      privateClusterConfig;
  final pulumi.Input<String>? project;

  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final pulumi.Input<String>? subnetwork;

  /// Required. ID to use for the workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  WorkstationClusterWorkstationsV1betaArgs({
    this.annotations,
    this.displayName,
    this.domainConfig,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.privateClusterConfig,
    this.project,
    this.subnetwork,
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
      map['domainConfig'] = pulumi.Input.mapOptionalInputValue<DomainConfig,
          Map<String, dynamic>>(domainConfigValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final privateClusterConfigValue = privateClusterConfig;
    if (privateClusterConfigValue != null) {
      map['privateClusterConfig'] = pulumi.Input.mapOptionalInputValue<
              PrivateClusterConfigWorkstationsV1beta, Map<String, dynamic>>(
          privateClusterConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    return map;
  }

  factory WorkstationClusterWorkstationsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return WorkstationClusterWorkstationsV1betaArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      domainConfig:
          pulumi.Input.asOptionalInput<DomainConfig>(map['domainConfig']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      privateClusterConfig:
          pulumi.Input.asOptionalInput<PrivateClusterConfigWorkstationsV1beta>(
              map['privateClusterConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
    );
  }
}
