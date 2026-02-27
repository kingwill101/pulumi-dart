// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'domain_config_response.dart';
import 'private_cluster_config_response6.dart';
import 'status_response35.dart';

/// Result data returned by getWorkstationCluster.
class GetWorkstationClusterResult2 {
  /// Optional. Client-specified annotations.
  final Map<String, String> annotations;

  /// Status conditions describing the workstation cluster's current state.
  final List<StatusResponse35> conditions;

  /// The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  final String controlPlaneIp;

  /// Time when this workstation cluster was created.
  final String createTime;

  /// Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  final bool degraded;

  /// Time when this workstation cluster was soft-deleted.
  final String deleteTime;

  /// Optional. Human-readable name for this workstation cluster.
  final String displayName;

  /// Optional. Configuration options for a custom domain.
  final DomainConfigResponse domainConfig;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String> labels;

  /// Identifier. Full name of this workstation cluster.
  final String name;

  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  final String network;

  /// Optional. Configuration for private workstation cluster.
  final PrivateClusterConfigResponse6 privateClusterConfig;

  /// Indicates whether this workstation cluster is currently being updated to match its intended state.
  final bool reconciling;

  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final String subnetwork;

  /// A system-assigned unique identifier for this workstation cluster.
  final String uid;

  /// Time when this workstation cluster was most recently updated.
  final String updateTime;

  GetWorkstationClusterResult2({
    required this.annotations,
    required this.conditions,
    required this.controlPlaneIp,
    required this.createTime,
    required this.degraded,
    required this.deleteTime,
    required this.displayName,
    required this.domainConfig,
    required this.etag,
    required this.labels,
    required this.name,
    required this.network,
    required this.privateClusterConfig,
    required this.reconciling,
    required this.subnetwork,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['conditions'] =
        Input.encodeList<StatusResponse35, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['controlPlaneIp'] = controlPlaneIp;
    map['createTime'] = createTime;
    map['degraded'] = degraded;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['domainConfig'] = domainConfig.toMap();
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['network'] = network;
    map['privateClusterConfig'] = privateClusterConfig.toMap();
    map['reconciling'] = reconciling;
    map['subnetwork'] = subnetwork;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetWorkstationClusterResult2.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterResult2(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      conditions: Input.decodeList<StatusResponse35>(
          map['conditions'],
          (value) =>
              StatusResponse35.fromMap((value as Map).cast<String, dynamic>())),
      controlPlaneIp: map['controlPlaneIp'] as String,
      createTime: map['createTime'] as String,
      degraded: map['degraded'] as bool,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      domainConfig: DomainConfigResponse.fromMap(
          (map['domainConfig'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      privateClusterConfig: PrivateClusterConfigResponse6.fromMap(
          (map['privateClusterConfig'] as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      subnetwork: map['subnetwork'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
