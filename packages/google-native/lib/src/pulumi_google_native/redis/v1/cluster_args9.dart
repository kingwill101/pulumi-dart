// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'cluster_authorization_mode.dart';
import 'cluster_transit_encryption_mode.dart';
import 'psc_config3.dart';

/// The set of arguments for Cluster.
class ClusterArgs9 {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  final Input<ClusterAuthorizationMode>? authorizationMode;

  /// Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  final Input<String> clusterId;
  final Input<String>? location;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  final Input<String>? name;
  final Input<String>? project;

  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  final Input<List<PscConfig3>> pscConfigs;

  /// Optional. The number of replica nodes per shard.
  final Input<int>? replicaCount;

  /// Idempotent request UUID.
  final Input<String>? requestId;

  /// Number of shards for the Redis cluster.
  final Input<int> shardCount;

  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  final Input<ClusterTransitEncryptionMode>? transitEncryptionMode;

  ClusterArgs9({
    this.authorizationMode,
    required this.clusterId,
    this.location,
    this.name,
    this.project,
    required this.pscConfigs,
    this.replicaCount,
    this.requestId,
    required this.shardCount,
    this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationModeValue = authorizationMode;
    if (authorizationModeValue != null) {
      map['authorizationMode'] =
          Input.mapOptionalInputValue<ClusterAuthorizationMode, String>(
              authorizationModeValue, (value) => value.value);
    }
    map['clusterId'] = clusterId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscConfigs'] =
        Input.mapInputValue<List<PscConfig3>, List<Map<String, dynamic>>>(
            pscConfigs,
            (value) => Input.encodeList<PscConfig3, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['shardCount'] = shardCount;
    final transitEncryptionModeValue = transitEncryptionMode;
    if (transitEncryptionModeValue != null) {
      map['transitEncryptionMode'] =
          Input.mapOptionalInputValue<ClusterTransitEncryptionMode, String>(
              transitEncryptionModeValue, (value) => value.value);
    }
    return map;
  }

  factory ClusterArgs9.fromMap(Map<String, dynamic> map) {
    return ClusterArgs9(
      authorizationMode: Input.asOptionalInput<ClusterAuthorizationMode>(
          map['authorizationMode']),
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pscConfigs: Input.asInput<List<PscConfig3>>(map['pscConfigs']),
      replicaCount: Input.asOptionalInput<int>(map['replicaCount']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      shardCount: Input.asInput<int>(map['shardCount']),
      transitEncryptionMode:
          Input.asOptionalInput<ClusterTransitEncryptionMode>(
              map['transitEncryptionMode']),
    );
  }
}
