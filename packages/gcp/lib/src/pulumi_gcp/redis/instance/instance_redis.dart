import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_maintenance_policy/instance_maintenance_policy_redis.dart';
import '../instance_maintenance_schedule/instance_maintenance_schedule_redis.dart';
import '../instance_node/instance_node.dart';
import '../instance_persistence_config/instance_persistence_config_redis.dart';
import '../instance_server_ca_cert/instance_server_ca_cert.dart';
import 'instance_redis_args.dart';

/// A Google Cloud Redis instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memorystore/docs/redis/)
///
/// ## Example Usage
///
/// ### Redis Instance Basic
///
///
///
/// ### Redis Instance Full
///
///
///
/// ### Redis Instance Full With Persistence Config
///
///
///
/// ### Redis Instance Private Service
///
///
///
/// ### Redis Instance Mrr
///
///
///
/// ### Redis Instance Cmek
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default {{name}}
/// ```
class InstanceRedis extends pulumi.CustomResource {
  /// Only applicable to STANDARD_HA tier which protects the instance
  /// against zonal failures by provisioning it across two zones.
  /// If provided, it must be a different zone from the one provided in
  /// [locationId].
  late final pulumi.Output<String> alternativeLocationId;

  /// Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// instance. If set to "true" AUTH is enabled on the instance.
  /// Default value is "false" meaning AUTH is disabled.
  late final pulumi.Output<bool?> authEnabled;

  /// AUTH String set on the instance. This field will only be populated if auth_enabled is true.
  late final pulumi.Output<String> authString;

  /// The full name of the Google Compute Engine network to which the
  /// instance is connected. If left unspecified, the default network
  /// will be used.
  late final pulumi.Output<String> authorizedNetwork;

  /// The connection mode of the Redis instance.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`.
  late final pulumi.Output<String?> connectMode;

  /// (Output)
  /// The time when the certificate was created.
  late final pulumi.Output<String> createTime;

  /// The current zone where the Redis endpoint is placed.
  /// For Basic Tier instances, this will always be the same as the
  /// [locationId] provided by the user at creation time. For Standard Tier
  /// instances, this can be either [locationId] or [alternativeLocationId]
  /// and can change after a failover event.
  late final pulumi.Output<String> currentLocationId;

  /// Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// instance. If this is provided, CMEK is enabled.
  late final pulumi.Output<String?> customerManagedKey;
  late final pulumi.Output<bool?> deletionProtection;

  /// An arbitrary and optional user-provided name for the instance.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  late final pulumi.Output<String> effectiveReservedIpRange;

  /// Hostname or IP address of the exposed Redis endpoint used by clients
  /// to connect to the service.
  late final pulumi.Output<String> host;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The zone where the instance will be provisioned. If not provided,
  /// the service will choose a zone for the instance. For STANDARD_HA tier,
  /// instances will be created across two zones for protection against
  /// zonal failures. If [alternativeLocationId] is also provided, it must
  /// be different from [locationId].
  late final pulumi.Output<String> locationId;

  /// Maintenance policy for an instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicyRedis?> maintenancePolicy;

  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceMaintenanceScheduleRedis>>
      maintenanceSchedules;

  /// The self service update maintenance version.
  late final pulumi.Output<String> maintenanceVersion;

  /// Redis memory size in GiB.
  late final pulumi.Output<int> memorySizeGb;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final pulumi.Output<String> name;

  /// Output only. Info per node.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceNode>> nodes;

  /// Persistence configuration for an instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePersistenceConfigRedis> persistenceConfig;

  /// Output only. Cloud IAM identity used by import / export operations
  /// to transfer data to/from Cloud Storage. Format is "serviceAccount:".
  /// The value may change over time for a given instance so should be
  /// checked before each import/export operation.
  late final pulumi.Output<String> persistenceIamIdentity;

  /// The port number of the exposed Redis endpoint.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only.
  /// Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes
  /// will exhibit some lag behind the primary. Write requests must target 'host'.
  late final pulumi.Output<String> readEndpoint;

  /// Output only. The port number of the exposed readonly redis endpoint. Standard tier only.
  /// Write requests should target 'port'.
  late final pulumi.Output<int> readEndpointPort;

  /// Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
  /// - READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
  /// instance cannot scale up or down the number of replicas.
  /// - READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
  /// can scale up and down the number of replicas.
  /// Possible values are: `READ_REPLICAS_DISABLED`, `READ_REPLICAS_ENABLED`.
  late final pulumi.Output<String> readReplicasMode;

  /// Redis configuration parameters, according to http://redis.io/topics/config.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs
  late final pulumi.Output<Map<String, String>?> redisConfigs;

  /// The version of Redis software. If not provided, latest supported
  /// version will be used. Please check the API documentation linked
  /// at the top for the latest valid values.
  late final pulumi.Output<String> redisVersion;

  /// The name of the Redis region of the instance.
  late final pulumi.Output<String> region;

  /// Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
  /// for a Standard Tier instance, the only valid value is 1 and the default is 1.
  /// The valid value for basic tier is 0 and the default is also 0.
  late final pulumi.Output<int> replicaCount;

  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  late final pulumi.Output<String> reservedIpRange;

  /// Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
  /// "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
  /// range associated with the private service access connection, or "auto".
  late final pulumi.Output<String> secondaryIpRange;

  /// List of server CA certificates for the instance.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceServerCaCert>> serverCaCerts;

  /// The service tier of the instance. Must be one of these values:
  /// - BASIC: standalone instance
  /// - STANDARD_HA: highly available primary/replica instances
  /// Default value is `BASIC`.
  /// Possible values are: `BASIC`, `STANDARD_HA`.
  late final pulumi.Output<String?> tier;

  /// The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  /// - SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication
  /// Default value is `DISABLED`.
  /// Possible values are: `SERVER_AUTHENTICATION`, `DISABLED`.
  late final pulumi.Output<String?> transitEncryptionMode;

  InstanceRedis(
    String name, {
    InstanceRedisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:redis/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alternativeLocationId =
        registerOutput<String>('alternativeLocationId');
    this.authEnabled = registerOutput<bool?>('authEnabled');
    this.authString = registerOutput<String>('authString');
    this.authorizedNetwork = registerOutput<String>('authorizedNetwork');
    this.connectMode = registerOutput<String?>('connectMode');
    this.createTime = registerOutput<String>('createTime');
    this.currentLocationId = registerOutput<String>('currentLocationId');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveReservedIpRange =
        registerOutput<String>('effectiveReservedIpRange');
    this.host = registerOutput<String>('host');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.locationId = registerOutput<String>('locationId');
    this.maintenancePolicy =
        registerOutput<InstanceMaintenancePolicyRedis?>('maintenancePolicy');
    this.maintenanceSchedules =
        registerOutput<List<InstanceMaintenanceScheduleRedis>>(
            'maintenanceSchedules');
    this.maintenanceVersion = registerOutput<String>('maintenanceVersion');
    this.memorySizeGb = registerOutput<int>('memorySizeGb');
    this.name = registerOutput<String>('name');
    this.nodes = registerOutput<List<InstanceNode>>('nodes');
    this.persistenceConfig =
        registerOutput<InstancePersistenceConfigRedis>('persistenceConfig');
    this.persistenceIamIdentity =
        registerOutput<String>('persistenceIamIdentity');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.readEndpoint = registerOutput<String>('readEndpoint');
    this.readEndpointPort = registerOutput<int>('readEndpointPort');
    this.readReplicasMode = registerOutput<String>('readReplicasMode');
    this.redisConfigs = registerOutput<Map<String, String>?>('redisConfigs');
    this.redisVersion = registerOutput<String>('redisVersion');
    this.region = registerOutput<String>('region');
    this.replicaCount = registerOutput<int>('replicaCount');
    this.reservedIpRange = registerOutput<String>('reservedIpRange');
    this.secondaryIpRange = registerOutput<String>('secondaryIpRange');
    this.serverCaCerts =
        registerOutput<List<InstanceServerCaCert>>('serverCaCerts');
    this.tier = registerOutput<String?>('tier');
    this.transitEncryptionMode =
        registerOutput<String?>('transitEncryptionMode');
  }
}
