// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_connect_mode_redis_v1beta1.dart';
import 'instance_read_replicas_mode_redis_v1beta1.dart';
import 'instance_suspension_reasons_item_redis_v1beta1.dart';
import 'instance_tier_redis_v1beta1.dart';
import 'instance_transit_encryption_mode_redis_v1beta1.dart';
import 'maintenance_policy_redis_v1beta1.dart';
import 'persistence_config_redis_v1beta1.dart';

/// {@template pulumi_redis_v1beta1_instance_redis_v1beta1_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_redis_v1beta1_instance_redis_v1beta1_args_doc}
class InstanceRedisV1beta1Args {
  /// Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  final pulumi.Input<String>? alternativeLocationId;
  /// Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  final pulumi.Input<bool>? authEnabled;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  final pulumi.Input<String>? authorizedNetwork;
  /// Optional. The available maintenance versions that an instance could update to.
  final pulumi.Input<List<String>>? availableMaintenanceVersions;
  /// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final pulumi.Input<InstanceConnectModeRedisV1beta1>? connectMode;
  /// Optional. The KMS key reference that the customer provides when trying to create the instance.
  final pulumi.Input<String>? customerManagedKey;
  /// An arbitrary and optional user-provided name for the instance.
  final pulumi.Input<String>? displayName;
  /// Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  final pulumi.Input<String> instanceId;
  /// Resource labels to represent user provided metadata
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  final pulumi.Input<String>? location;
  /// Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  final pulumi.Input<MaintenancePolicyRedisV1beta1>? maintenancePolicy;
  /// Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  final pulumi.Input<String>? maintenanceVersion;
  /// Redis memory size in GiB.
  final pulumi.Input<int> memorySizeGb;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  final pulumi.Input<String>? name;
  /// Optional. Persistence configuration parameters
  final pulumi.Input<PersistenceConfigRedisV1beta1>? persistenceConfig;
  final pulumi.Input<String>? project;
  /// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  final pulumi.Input<InstanceReadReplicasModeRedisV1beta1>? readReplicasMode;
  /// Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  final pulumi.Input<Map<String, String>>? redisConfigs;
  /// Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  final pulumi.Input<String>? redisVersion;
  /// Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  final pulumi.Input<int>? replicaCount;
  /// Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  final pulumi.Input<String>? reservedIpRange;
  /// Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  final pulumi.Input<String>? secondaryIpRange;
  /// Optional. reasons that causes instance in "SUSPENDED" state.
  final pulumi.Input<List<InstanceSuspensionReasonsItemRedisV1beta1>>? suspensionReasons;
  /// The service tier of the instance.
  final pulumi.Input<InstanceTierRedisV1beta1> tier;
  /// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  final pulumi.Input<InstanceTransitEncryptionModeRedisV1beta1>? transitEncryptionMode;

  /// Creates a new [InstanceRedisV1beta1Args].
  /// [alternativeLocationId] Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  /// [authEnabled] Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  /// [authorizedNetwork] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  /// [availableMaintenanceVersions] Optional. The available maintenance versions that an instance could update to.
  /// [connectMode] Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  /// [customerManagedKey] Optional. The KMS key reference that the customer provides when trying to create the instance.
  /// [displayName] An arbitrary and optional user-provided name for the instance.
  /// [instanceId] Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  /// [labels] Resource labels to represent user provided metadata
  /// [location] Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  /// [maintenancePolicy] Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  /// [maintenanceVersion] Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  /// [memorySizeGb] Redis memory size in GiB.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  /// [persistenceConfig] Optional. Persistence configuration parameters
  /// [project] Optional.
  /// [readReplicasMode] Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  /// [redisConfigs] Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  /// [redisVersion] Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  /// [replicaCount] Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  /// [reservedIpRange] Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  /// [secondaryIpRange] Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  /// [suspensionReasons] Optional. reasons that causes instance in "SUSPENDED" state.
  /// [tier] The service tier of the instance.
  /// [transitEncryptionMode] Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  InstanceRedisV1beta1Args({
    String? alternativeLocationId,
    bool? authEnabled,
    String? authorizedNetwork,
    List<String>? availableMaintenanceVersions,
    InstanceConnectModeRedisV1beta1? connectMode,
    String? customerManagedKey,
    String? displayName,
    required String instanceId,
    Map<String, String>? labels,
    String? location,
    MaintenancePolicyRedisV1beta1? maintenancePolicy,
    String? maintenanceVersion,
    required int memorySizeGb,
    String? name,
    PersistenceConfigRedisV1beta1? persistenceConfig,
    String? project,
    InstanceReadReplicasModeRedisV1beta1? readReplicasMode,
    Map<String, String>? redisConfigs,
    String? redisVersion,
    int? replicaCount,
    String? reservedIpRange,
    String? secondaryIpRange,
    List<InstanceSuspensionReasonsItemRedisV1beta1>? suspensionReasons,
    required InstanceTierRedisV1beta1 tier,
    InstanceTransitEncryptionModeRedisV1beta1? transitEncryptionMode,
  }) :
      alternativeLocationId = pulumi.Input.asOptionalInput<String>(alternativeLocationId),
      authEnabled = pulumi.Input.asOptionalInput<bool>(authEnabled),
      authorizedNetwork = pulumi.Input.asOptionalInput<String>(authorizedNetwork),
      availableMaintenanceVersions = pulumi.Input.asOptionalInput<List<String>>(availableMaintenanceVersions),
      connectMode = pulumi.Input.asOptionalInput<InstanceConnectModeRedisV1beta1>(connectMode),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenancePolicy = pulumi.Input.asOptionalInput<MaintenancePolicyRedisV1beta1>(maintenancePolicy),
      maintenanceVersion = pulumi.Input.asOptionalInput<String>(maintenanceVersion),
      memorySizeGb = pulumi.Input.asInput<int>(memorySizeGb),
      name = pulumi.Input.asOptionalInput<String>(name),
      persistenceConfig = pulumi.Input.asOptionalInput<PersistenceConfigRedisV1beta1>(persistenceConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      readReplicasMode = pulumi.Input.asOptionalInput<InstanceReadReplicasModeRedisV1beta1>(readReplicasMode),
      redisConfigs = pulumi.Input.asOptionalInput<Map<String, String>>(redisConfigs),
      redisVersion = pulumi.Input.asOptionalInput<String>(redisVersion),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      reservedIpRange = pulumi.Input.asOptionalInput<String>(reservedIpRange),
      secondaryIpRange = pulumi.Input.asOptionalInput<String>(secondaryIpRange),
      suspensionReasons = pulumi.Input.asOptionalInput<List<InstanceSuspensionReasonsItemRedisV1beta1>>(suspensionReasons),
      tier = pulumi.Input.asInput<InstanceTierRedisV1beta1>(tier),
      transitEncryptionMode = pulumi.Input.asOptionalInput<InstanceTransitEncryptionModeRedisV1beta1>(transitEncryptionMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeLocationId': ?alternativeLocationId,
      'authEnabled': ?authEnabled,
      'authorizedNetwork': ?authorizedNetwork,
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'connectMode': ?pulumi.Input.mapOptionalInputValue<InstanceConnectModeRedisV1beta1, String>(connectMode, (value) => value.value),
      'customerManagedKey': ?customerManagedKey,
      'displayName': ?displayName,
      'instanceId': instanceId,
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<MaintenancePolicyRedisV1beta1, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceVersion': ?maintenanceVersion,
      'memorySizeGb': memorySizeGb,
      'name': ?name,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<PersistenceConfigRedisV1beta1, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'project': ?project,
      'readReplicasMode': ?pulumi.Input.mapOptionalInputValue<InstanceReadReplicasModeRedisV1beta1, String>(readReplicasMode, (value) => value.value),
      'redisConfigs': ?redisConfigs,
      'redisVersion': ?redisVersion,
      'replicaCount': ?replicaCount,
      'reservedIpRange': ?reservedIpRange,
      'secondaryIpRange': ?secondaryIpRange,
      'suspensionReasons': ?pulumi.Input.mapOptionalInputValue<List<InstanceSuspensionReasonsItemRedisV1beta1>, List<String>>(suspensionReasons, (value) => pulumi.Input.encodeList<InstanceSuspensionReasonsItemRedisV1beta1, String>(value, (value) => value.value)),
      'tier': pulumi.Input.mapInputValue<InstanceTierRedisV1beta1, String>(tier, (value) => value.value),
      'transitEncryptionMode': ?pulumi.Input.mapOptionalInputValue<InstanceTransitEncryptionModeRedisV1beta1, String>(transitEncryptionMode, (value) => value.value),
    };
  }

  factory InstanceRedisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return InstanceRedisV1beta1Args(
      alternativeLocationId: map['alternativeLocationId'] == null ? null : map['alternativeLocationId'] as String,
      authEnabled: map['authEnabled'] == null ? null : map['authEnabled'] as bool,
      authorizedNetwork: map['authorizedNetwork'] == null ? null : map['authorizedNetwork'] as String,
      availableMaintenanceVersions: map['availableMaintenanceVersions'] == null ? null : (map['availableMaintenanceVersions'] as List).cast<String>(),
      connectMode: map['connectMode'] == null ? null : InstanceConnectModeRedisV1beta1.fromValue(map['connectMode'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : map['customerManagedKey'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      instanceId: map['instanceId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maintenancePolicy: map['maintenancePolicy'] == null ? null : MaintenancePolicyRedisV1beta1.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>()),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : map['maintenanceVersion'] as String,
      memorySizeGb: map['memorySizeGb'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      persistenceConfig: map['persistenceConfig'] == null ? null : PersistenceConfigRedisV1beta1.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      readReplicasMode: map['readReplicasMode'] == null ? null : InstanceReadReplicasModeRedisV1beta1.fromValue(map['readReplicasMode'] as String),
      redisConfigs: map['redisConfigs'] == null ? null : (map['redisConfigs'] as Map).cast<String, String>(),
      redisVersion: map['redisVersion'] == null ? null : map['redisVersion'] as String,
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
      reservedIpRange: map['reservedIpRange'] == null ? null : map['reservedIpRange'] as String,
      secondaryIpRange: map['secondaryIpRange'] == null ? null : map['secondaryIpRange'] as String,
      suspensionReasons: map['suspensionReasons'] == null ? null : pulumi.Input.decodeList<InstanceSuspensionReasonsItemRedisV1beta1>(map['suspensionReasons'], (value) => InstanceSuspensionReasonsItemRedisV1beta1.fromValue(value as String)),
      tier: InstanceTierRedisV1beta1.fromValue(map['tier'] as String),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : InstanceTransitEncryptionModeRedisV1beta1.fromValue(map['transitEncryptionMode'] as String),
    );
  }
}

