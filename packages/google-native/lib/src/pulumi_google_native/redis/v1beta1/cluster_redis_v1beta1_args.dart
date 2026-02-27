// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization_mode_redis_v1beta1.dart';
import 'cluster_transit_encryption_mode_redis_v1beta1.dart';
import 'psc_config_redis_v1beta1.dart';

/// The set of arguments for Cluster.
class ClusterRedisV1beta1Args {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  final pulumi.Input<ClusterAuthorizationModeRedisV1beta1>? authorizationMode;

  /// Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String>? location;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  final pulumi.Input<List<PscConfigRedisV1beta1>> pscConfigs;

  /// Optional. The number of replica nodes per shard.
  final pulumi.Input<int>? replicaCount;

  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// Number of shards for the Redis cluster.
  final pulumi.Input<int> shardCount;

  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  final pulumi.Input<ClusterTransitEncryptionModeRedisV1beta1>?
      transitEncryptionMode;

  ClusterRedisV1beta1Args({
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
      map['authorizationMode'] = pulumi.Input.mapOptionalInputValue<
          ClusterAuthorizationModeRedisV1beta1,
          String>(authorizationModeValue, (value) => value.value);
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
    map['pscConfigs'] = pulumi.Input.mapInputValue<List<PscConfigRedisV1beta1>,
            List<Map<String, dynamic>>>(
        pscConfigs,
        (value) => pulumi.Input.encodeList<PscConfigRedisV1beta1,
            Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['transitEncryptionMode'] = pulumi.Input.mapOptionalInputValue<
          ClusterTransitEncryptionModeRedisV1beta1,
          String>(transitEncryptionModeValue, (value) => value.value);
    }
    return map;
  }

  factory ClusterRedisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ClusterRedisV1beta1Args(
      authorizationMode:
          pulumi.Input.asOptionalInput<ClusterAuthorizationModeRedisV1beta1>(
              map['authorizationMode']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscConfigs:
          pulumi.Input.asInput<List<PscConfigRedisV1beta1>>(map['pscConfigs']),
      replicaCount: pulumi.Input.asOptionalInput<int>(map['replicaCount']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      shardCount: pulumi.Input.asInput<int>(map['shardCount']),
      transitEncryptionMode: pulumi.Input.asOptionalInput<
              ClusterTransitEncryptionModeRedisV1beta1>(
          map['transitEncryptionMode']),
    );
  }
}
