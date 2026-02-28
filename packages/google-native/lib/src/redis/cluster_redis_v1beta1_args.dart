// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization_mode_redis_v1beta1.dart';
import 'cluster_transit_encryption_mode_redis_v1beta1.dart';
import 'psc_config_redis_v1beta1.dart';

/// {@template pulumi_redis_v1beta1_cluster_redis_v1beta1_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_redis_v1beta1_cluster_redis_v1beta1_args_doc}
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
  final pulumi.Input<ClusterTransitEncryptionModeRedisV1beta1>? transitEncryptionMode;

  /// Creates a new [ClusterRedisV1beta1Args].
  /// [authorizationMode] Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// [clusterId] Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  /// [location] Optional.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// [project] Optional.
  /// [pscConfigs] Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  /// [replicaCount] Optional. The number of replica nodes per shard.
  /// [requestId] Idempotent request UUID.
  /// [shardCount] Number of shards for the Redis cluster.
  /// [transitEncryptionMode] Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  ClusterRedisV1beta1Args({
    ClusterAuthorizationModeRedisV1beta1? authorizationMode,
    required String clusterId,
    String? location,
    String? name,
    String? project,
    required List<PscConfigRedisV1beta1> pscConfigs,
    int? replicaCount,
    String? requestId,
    required int shardCount,
    ClusterTransitEncryptionModeRedisV1beta1? transitEncryptionMode,
  }) :
      authorizationMode = pulumi.Input.asOptionalInput<ClusterAuthorizationModeRedisV1beta1>(authorizationMode),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConfigs = pulumi.Input.asInput<List<PscConfigRedisV1beta1>>(pscConfigs),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      shardCount = pulumi.Input.asInput<int>(shardCount),
      transitEncryptionMode = pulumi.Input.asOptionalInput<ClusterTransitEncryptionModeRedisV1beta1>(transitEncryptionMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?pulumi.Input.mapOptionalInputValue<ClusterAuthorizationModeRedisV1beta1, String>(authorizationMode, (value) => value.value),
      'clusterId': clusterId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pscConfigs': pulumi.Input.mapInputValue<List<PscConfigRedisV1beta1>, List<Map<String, dynamic>>>(pscConfigs, (value) => pulumi.Input.encodeList<PscConfigRedisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaCount': ?replicaCount,
      'requestId': ?requestId,
      'shardCount': shardCount,
      'transitEncryptionMode': ?pulumi.Input.mapOptionalInputValue<ClusterTransitEncryptionModeRedisV1beta1, String>(transitEncryptionMode, (value) => value.value),
    };
  }

  factory ClusterRedisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ClusterRedisV1beta1Args(
      authorizationMode: map['authorizationMode'] == null ? null : ClusterAuthorizationModeRedisV1beta1.fromValue(map['authorizationMode'] as String),
      clusterId: map['clusterId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pscConfigs: pulumi.Input.decodeList<PscConfigRedisV1beta1>(map['pscConfigs'], (value) => PscConfigRedisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      shardCount: map['shardCount'] as int,
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : ClusterTransitEncryptionModeRedisV1beta1.fromValue(map['transitEncryptionMode'] as String),
    );
  }
}

