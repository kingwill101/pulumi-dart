// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'private_cluster_config5.dart';

/// The set of arguments for WorkstationCluster.
class WorkstationClusterArgs {
  /// Optional. Client-specified annotations.
  final Input<Map<String, String>>? annotations;

  /// Optional. Human-readable name for this workstation cluster.
  final Input<String>? displayName;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Identifier. Full name of this workstation cluster.
  final Input<String>? name;

  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  final Input<String>? network;

  /// Optional. Configuration for private workstation cluster.
  final Input<PrivateClusterConfig5>? privateClusterConfig;
  final Input<String>? project;

  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final Input<String>? subnetwork;

  /// Required. ID to use for the workstation cluster.
  final Input<String> workstationClusterId;

  WorkstationClusterArgs({
    this.annotations,
    this.displayName,
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
      map['privateClusterConfig'] = Input.mapOptionalInputValue<
              PrivateClusterConfig5, Map<String, dynamic>>(
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

  factory WorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      privateClusterConfig: Input.asOptionalInput<PrivateClusterConfig5>(
          map['privateClusterConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      workstationClusterId: Input.asInput<String>(map['workstationClusterId']),
    );
  }
}
