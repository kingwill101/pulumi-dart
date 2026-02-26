import 'package:pulumi/pulumi.dart';
import 'cluster_args10.dart';
import 'discovery_endpoint_response2.dart';
import 'psc_config_response4.dart';
import 'psc_connection_response3.dart';
import 'state_info_response2.dart';

/// Creates a Redis cluster based on the specified properties. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis cluster will be fully functional. The completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
class Cluster10 extends CustomResource {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  late final Output<String> authorizationMode;

  /// Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  late final Output<String> clusterId;

  /// The timestamp associated with the cluster creation request.
  late final Output<String> createTime;

  /// Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one discovery endpoint is supported.
  late final Output<List<DiscoveryEndpointResponse2>> discoveryEndpoints;
  late final Output<String> location;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  late final Output<String> name;
  late final Output<String> project;

  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  late final Output<List<PscConfigResponse4>> pscConfigs;

  /// PSC connections for discovery of the cluster topology and accessing the cluster.
  late final Output<List<PscConnectionResponse3>> pscConnections;

  /// Optional. The number of replica nodes per shard.
  late final Output<int> replicaCount;

  /// Idempotent request UUID.
  late final Output<String?> requestId;

  /// Number of shards for the Redis cluster.
  late final Output<int> shardCount;

  /// Redis memory size in GB for the entire cluster.
  late final Output<int> sizeGb;

  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  late final Output<String> state;

  /// Additional information about the current state of the cluster.
  late final Output<StateInfoResponse2> stateInfo;

  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  late final Output<String> transitEncryptionMode;

  /// System assigned, unique identifier for the cluster.
  late final Output<String> uid;

  Cluster10(
    String name, {
    ClusterArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:redis/v1beta1:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizationMode = registerOutput<String>('authorizationMode');
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.discoveryEndpoints =
        registerOutput<List<DiscoveryEndpointResponse2>>('discoveryEndpoints');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pscConfigs = registerOutput<List<PscConfigResponse4>>('pscConfigs');
    this.pscConnections =
        registerOutput<List<PscConnectionResponse3>>('pscConnections');
    this.replicaCount = registerOutput<int>('replicaCount');
    this.requestId = registerOutput<String?>('requestId');
    this.shardCount = registerOutput<int>('shardCount');
    this.sizeGb = registerOutput<int>('sizeGb');
    this.state = registerOutput<String>('state');
    this.stateInfo = registerOutput<StateInfoResponse2>('stateInfo');
    this.transitEncryptionMode =
        registerOutput<String>('transitEncryptionMode');
    this.uid = registerOutput<String>('uid');
  }
}
