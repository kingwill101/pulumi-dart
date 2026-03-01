import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_redis_v1beta1_args.dart';
import 'maintenance_policy_response_redis_v1beta1.dart';
import 'maintenance_schedule_response_redis_v1beta1.dart';
import 'node_info_response_redis_v1beta1.dart';
import 'persistence_config_response_redis_v1beta1.dart';
import 'tls_certificate_response_redis_v1beta1.dart';

/// Creates a Redis instance based on the specified tier and memory size. By default, the instance is accessible from the project's [default network](https://cloud.google.com/vpc/docs/vpc). The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis instance will be fully functional. The completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
class InstanceRedisV1beta1 extends pulumi.CustomResource {
  /// Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  late final pulumi.Output<String> alternativeLocationId;

  /// Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  late final pulumi.Output<bool> authEnabled;

  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  late final pulumi.Output<String> authorizedNetwork;

  /// Optional. The available maintenance versions that an instance could update to.
  late final pulumi.Output<List<String>> availableMaintenanceVersions;

  /// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  late final pulumi.Output<String> connectMode;

  /// The time the instance was created.
  late final pulumi.Output<String> createTime;

  /// The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.
  late final pulumi.Output<String> currentLocationId;

  /// Optional. The KMS key reference that the customer provides when trying to create the instance.
  late final pulumi.Output<String> customerManagedKey;

  /// An arbitrary and optional user-provided name for the instance.
  late final pulumi.Output<String> displayName;

  /// Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.
  late final pulumi.Output<String> host;

  /// Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  late final pulumi.Output<String> instanceId;

  /// Resource labels to represent user provided metadata
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  late final pulumi.Output<MaintenancePolicyResponseRedisV1beta1>
  maintenancePolicy;

  /// Date and time of upcoming maintenance events which have been scheduled.
  late final pulumi.Output<MaintenanceScheduleResponseRedisV1beta1>
  maintenanceSchedule;

  /// Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  late final pulumi.Output<String> maintenanceVersion;

  /// Redis memory size in GiB.
  late final pulumi.Output<int> memorySizeGb;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  late final pulumi.Output<String> name;

  /// Info per node.
  late final pulumi.Output<List<NodeInfoResponseRedisV1beta1>> nodes;

  /// Optional. Persistence configuration parameters
  late final pulumi.Output<PersistenceConfigResponseRedisV1beta1>
  persistenceConfig;

  /// Cloud IAM identity used by import / export operations to transfer data to/from Cloud Storage. Format is "serviceAccount:". The value may change over time for a given instance so should be checked before each import/export operation.
  late final pulumi.Output<String> persistenceIamIdentity;

  /// The port number of the exposed Redis endpoint.
  late final pulumi.Output<int> port;
  late final pulumi.Output<String> project;

  /// Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target 'host'.
  late final pulumi.Output<String> readEndpoint;

  /// The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target 'port'.
  late final pulumi.Output<int> readEndpointPort;

  /// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  late final pulumi.Output<String> readReplicasMode;

  /// Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  late final pulumi.Output<Map<String, String>> redisConfigs;

  /// Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  late final pulumi.Output<String> redisVersion;

  /// Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  late final pulumi.Output<int> replicaCount;

  /// Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  late final pulumi.Output<String> reservedIpRange;

  /// Optional. Output only. Reserved for future use. Zone Separation compliance state of the instance. Field name and documentation is obfuscated according to go/zs-resource-status.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  late final pulumi.Output<String> secondaryIpRange;

  /// List of server CA certificates for the instance.
  late final pulumi.Output<List<TlsCertificateResponseRedisV1beta1>>
  serverCaCerts;

  /// The current state of this instance.
  late final pulumi.Output<String> state;

  /// Additional information about the current status of this instance, if available.
  late final pulumi.Output<String> statusMessage;

  /// Optional. reasons that causes instance in "SUSPENDED" state.
  late final pulumi.Output<List<String>> suspensionReasons;

  /// The service tier of the instance.
  late final pulumi.Output<String> tier;

  /// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  late final pulumi.Output<String> transitEncryptionMode;

  /// Creates a new [InstanceRedisV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceRedisV1beta1]. {@macro pulumi_redis_v1beta1_instance_redis_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceRedisV1beta1(
    String name, {
    InstanceRedisV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:redis/v1beta1:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.alternativeLocationId = registerOutput<String>(
      'alternativeLocationId',
    );
    this.authEnabled = registerOutput<bool>('authEnabled');
    this.authorizedNetwork = registerOutput<String>('authorizedNetwork');
    this.availableMaintenanceVersions = registerOutput<List<String>>(
      'availableMaintenanceVersions',
    );
    this.connectMode = registerOutput<String>('connectMode');
    this.createTime = registerOutput<String>('createTime');
    this.currentLocationId = registerOutput<String>('currentLocationId');
    this.customerManagedKey = registerOutput<String>('customerManagedKey');
    this.displayName = registerOutput<String>('displayName');
    this.host = registerOutput<String>('host');
    this.instanceId = registerOutput<String>('instanceId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.maintenancePolicy =
        registerOutput<MaintenancePolicyResponseRedisV1beta1>(
          'maintenancePolicy',
        );
    this.maintenanceSchedule =
        registerOutput<MaintenanceScheduleResponseRedisV1beta1>(
          'maintenanceSchedule',
        );
    this.maintenanceVersion = registerOutput<String>('maintenanceVersion');
    this.memorySizeGb = registerOutput<int>('memorySizeGb');
    this.name = registerOutput<String>('name');
    this.nodes = registerOutput<List<NodeInfoResponseRedisV1beta1>>('nodes');
    this.persistenceConfig =
        registerOutput<PersistenceConfigResponseRedisV1beta1>(
          'persistenceConfig',
        );
    this.persistenceIamIdentity = registerOutput<String>(
      'persistenceIamIdentity',
    );
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.readEndpoint = registerOutput<String>('readEndpoint');
    this.readEndpointPort = registerOutput<int>('readEndpointPort');
    this.readReplicasMode = registerOutput<String>('readReplicasMode');
    this.redisConfigs = registerOutput<Map<String, String>>('redisConfigs');
    this.redisVersion = registerOutput<String>('redisVersion');
    this.replicaCount = registerOutput<int>('replicaCount');
    this.reservedIpRange = registerOutput<String>('reservedIpRange');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.secondaryIpRange = registerOutput<String>('secondaryIpRange');
    this.serverCaCerts =
        registerOutput<List<TlsCertificateResponseRedisV1beta1>>(
          'serverCaCerts',
        );
    this.state = registerOutput<String>('state');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.suspensionReasons = registerOutput<List<String>>('suspensionReasons');
    this.tier = registerOutput<String>('tier');
    this.transitEncryptionMode = registerOutput<String>(
      'transitEncryptionMode',
    );
  }
}
