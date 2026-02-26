// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'discovery_endpoint_response2.dart';
import 'psc_config_response4.dart';
import 'psc_connection_response3.dart';
import 'state_info_response2.dart';

/// Result data returned by getCluster.
class GetClusterResult10 {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  final String authorizationMode;

  /// The timestamp associated with the cluster creation request.
  final String createTime;

  /// Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one discovery endpoint is supported.
  final List<DiscoveryEndpointResponse2> discoveryEndpoints;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  final String name;

  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  final List<PscConfigResponse4> pscConfigs;

  /// PSC connections for discovery of the cluster topology and accessing the cluster.
  final List<PscConnectionResponse3> pscConnections;

  /// Optional. The number of replica nodes per shard.
  final int replicaCount;

  /// Number of shards for the Redis cluster.
  final int shardCount;

  /// Redis memory size in GB for the entire cluster.
  final int sizeGb;

  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  final String state;

  /// Additional information about the current state of the cluster.
  final StateInfoResponse2 stateInfo;

  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  final String transitEncryptionMode;

  /// System assigned, unique identifier for the cluster.
  final String uid;

  GetClusterResult10({
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
    map['discoveryEndpoints'] =
        Input.encodeList<DiscoveryEndpointResponse2, Map<String, dynamic>>(
            discoveryEndpoints, (value) => value.toMap());
    map['name'] = name;
    map['pscConfigs'] =
        Input.encodeList<PscConfigResponse4, Map<String, dynamic>>(
            pscConfigs, (value) => value.toMap());
    map['pscConnections'] =
        Input.encodeList<PscConnectionResponse3, Map<String, dynamic>>(
            pscConnections, (value) => value.toMap());
    map['replicaCount'] = replicaCount;
    map['shardCount'] = shardCount;
    map['sizeGb'] = sizeGb;
    map['state'] = state;
    map['stateInfo'] = stateInfo.toMap();
    map['transitEncryptionMode'] = transitEncryptionMode;
    map['uid'] = uid;
    return map;
  }

  factory GetClusterResult10.fromMap(Map<String, dynamic> map) {
    return GetClusterResult10(
      authorizationMode: map['authorizationMode'] as String,
      createTime: map['createTime'] as String,
      discoveryEndpoints: Input.decodeList<DiscoveryEndpointResponse2>(
          map['discoveryEndpoints'],
          (value) => DiscoveryEndpointResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      pscConfigs: Input.decodeList<PscConfigResponse4>(
          map['pscConfigs'],
          (value) => PscConfigResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscConnections: Input.decodeList<PscConnectionResponse3>(
          map['pscConnections'],
          (value) => PscConnectionResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      replicaCount: map['replicaCount'] as int,
      shardCount: map['shardCount'] as int,
      sizeGb: map['sizeGb'] as int,
      state: map['state'] as String,
      stateInfo: StateInfoResponse2.fromMap(
          (map['stateInfo'] as Map).cast<String, dynamic>()),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
    );
  }
}
