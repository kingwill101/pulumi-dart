// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_endpoint_response.dart';
import 'psc_config_response_redis_v1.dart';
import 'psc_connection_response_redis_v1.dart';
import 'state_info_response.dart';

/// Result data returned by getCluster.
class GetClusterRedisV1Result {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  final String authorizationMode;

  /// The timestamp associated with the cluster creation request.
  final String createTime;

  /// Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one discovery endpoint is supported.
  final List<DiscoveryEndpointResponse> discoveryEndpoints;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  final String name;

  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  final List<PscConfigResponseRedisV1> pscConfigs;

  /// PSC connections for discovery of the cluster topology and accessing the cluster.
  final List<PscConnectionResponseRedisV1> pscConnections;

  /// Optional. The number of replica nodes per shard.
  final int replicaCount;

  /// Number of shards for the Redis cluster.
  final int shardCount;

  /// Redis memory size in GB for the entire cluster.
  final int sizeGb;

  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  final String state;

  /// Additional information about the current state of the cluster.
  final StateInfoResponse stateInfo;

  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  final String transitEncryptionMode;

  /// System assigned, unique identifier for the cluster.
  final String uid;

  GetClusterRedisV1Result({
    required this.authorizationMode,
    required this.createTime,
    required this.discoveryEndpoints,
    required this.name,
    required this.pscConfigs,
    required this.pscConnections,
    required this.replicaCount,
    required this.shardCount,
    required this.sizeGb,
    required this.state,
    required this.stateInfo,
    required this.transitEncryptionMode,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationMode'] = authorizationMode;
    map['createTime'] = createTime;
    map['discoveryEndpoints'] = pulumi.Input.encodeList<
        DiscoveryEndpointResponse,
        Map<String, dynamic>>(discoveryEndpoints, (value) => value.toMap());
    map['name'] = name;
    map['pscConfigs'] =
        pulumi.Input.encodeList<PscConfigResponseRedisV1, Map<String, dynamic>>(
            pscConfigs, (value) => value.toMap());
    map['pscConnections'] = pulumi.Input.encodeList<
        PscConnectionResponseRedisV1,
        Map<String, dynamic>>(pscConnections, (value) => value.toMap());
    map['replicaCount'] = replicaCount;
    map['shardCount'] = shardCount;
    map['sizeGb'] = sizeGb;
    map['state'] = state;
    map['stateInfo'] = stateInfo.toMap();
    map['transitEncryptionMode'] = transitEncryptionMode;
    map['uid'] = uid;
    return map;
  }

  factory GetClusterRedisV1Result.fromMap(Map<String, dynamic> map) {
    return GetClusterRedisV1Result(
      authorizationMode: map['authorizationMode'] as String,
      createTime: map['createTime'] as String,
      discoveryEndpoints: pulumi.Input.decodeList<DiscoveryEndpointResponse>(
          map['discoveryEndpoints'],
          (value) => DiscoveryEndpointResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      pscConfigs: pulumi.Input.decodeList<PscConfigResponseRedisV1>(
          map['pscConfigs'],
          (value) => PscConfigResponseRedisV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscConnections: pulumi.Input.decodeList<PscConnectionResponseRedisV1>(
          map['pscConnections'],
          (value) => PscConnectionResponseRedisV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      replicaCount: map['replicaCount'] as int,
      shardCount: map['shardCount'] as int,
      sizeGb: map['sizeGb'] as int,
      state: map['state'] as String,
      stateInfo: StateInfoResponse.fromMap(
          (map['stateInfo'] as Map).cast<String, dynamic>()),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
    );
  }
}
