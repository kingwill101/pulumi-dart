// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_connect_mode.dart';
import 'instance_read_replicas_mode.dart';
import 'instance_suspension_reasons_item.dart';
import 'instance_tier3.dart';
import 'instance_transit_encryption_mode.dart';
import 'maintenance_policy3.dart';
import 'persistence_config.dart';

/// The set of arguments for Instance.
class InstanceArgs20 {
  /// Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  final Input<String>? alternativeLocationId;

  /// Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  final Input<bool>? authEnabled;

  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  final Input<String>? authorizedNetwork;

  /// Optional. The available maintenance versions that an instance could update to.
  final Input<List<String>>? availableMaintenanceVersions;

  /// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final Input<InstanceConnectMode>? connectMode;

  /// Optional. The KMS key reference that the customer provides when trying to create the instance.
  final Input<String>? customerManagedKey;

  /// An arbitrary and optional user-provided name for the instance.
  final Input<String>? displayName;

  /// Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  final Input<String> instanceId;

  /// Resource labels to represent user provided metadata
  final Input<Map<String, String>>? labels;

  /// Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  final Input<String>? location;

  /// Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  final Input<MaintenancePolicy3>? maintenancePolicy;

  /// Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  final Input<String>? maintenanceVersion;

  /// Redis memory size in GiB.
  final Input<int> memorySizeGb;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  final Input<String>? name;

  /// Optional. Persistence configuration parameters
  final Input<PersistenceConfig>? persistenceConfig;
  final Input<String>? project;

  /// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  final Input<InstanceReadReplicasMode>? readReplicasMode;

  /// Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  final Input<Map<String, String>>? redisConfigs;

  /// Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  final Input<String>? redisVersion;

  /// Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  final Input<int>? replicaCount;

  /// Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  final Input<String>? reservedIpRange;

  /// Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  final Input<String>? secondaryIpRange;

  /// Optional. reasons that causes instance in "SUSPENDED" state.
  final Input<List<InstanceSuspensionReasonsItem>>? suspensionReasons;

  /// The service tier of the instance.
  final Input<InstanceTier3> tier;

  /// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  final Input<InstanceTransitEncryptionMode>? transitEncryptionMode;

  InstanceArgs20({
    this.alternativeLocationId,
    this.authEnabled,
    this.authorizedNetwork,
    this.availableMaintenanceVersions,
    this.connectMode,
    this.customerManagedKey,
    this.displayName,
    required this.instanceId,
    this.labels,
    this.location,
    this.maintenancePolicy,
    this.maintenanceVersion,
    required this.memorySizeGb,
    this.name,
    this.persistenceConfig,
    this.project,
    this.readReplicasMode,
    this.redisConfigs,
    this.redisVersion,
    this.replicaCount,
    this.reservedIpRange,
    this.secondaryIpRange,
    this.suspensionReasons,
    required this.tier,
    this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternativeLocationIdValue = alternativeLocationId;
    if (alternativeLocationIdValue != null) {
      map['alternativeLocationId'] = alternativeLocationIdValue;
    }
    final authEnabledValue = authEnabled;
    if (authEnabledValue != null) {
      map['authEnabled'] = authEnabledValue;
    }
    final authorizedNetworkValue = authorizedNetwork;
    if (authorizedNetworkValue != null) {
      map['authorizedNetwork'] = authorizedNetworkValue;
    }
    final availableMaintenanceVersionsValue = availableMaintenanceVersions;
    if (availableMaintenanceVersionsValue != null) {
      map['availableMaintenanceVersions'] = availableMaintenanceVersionsValue;
    }
    final connectModeValue = connectMode;
    if (connectModeValue != null) {
      map['connectMode'] =
          Input.mapOptionalInputValue<InstanceConnectMode, String>(
              connectModeValue, (value) => value.value);
    }
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['instanceId'] = instanceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] =
          Input.mapOptionalInputValue<MaintenancePolicy3, Map<String, dynamic>>(
              maintenancePolicyValue, (value) => value.toMap());
    }
    final maintenanceVersionValue = maintenanceVersion;
    if (maintenanceVersionValue != null) {
      map['maintenanceVersion'] = maintenanceVersionValue;
    }
    map['memorySizeGb'] = memorySizeGb;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final persistenceConfigValue = persistenceConfig;
    if (persistenceConfigValue != null) {
      map['persistenceConfig'] =
          Input.mapOptionalInputValue<PersistenceConfig, Map<String, dynamic>>(
              persistenceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readReplicasModeValue = readReplicasMode;
    if (readReplicasModeValue != null) {
      map['readReplicasMode'] =
          Input.mapOptionalInputValue<InstanceReadReplicasMode, String>(
              readReplicasModeValue, (value) => value.value);
    }
    final redisConfigsValue = redisConfigs;
    if (redisConfigsValue != null) {
      map['redisConfigs'] = redisConfigsValue;
    }
    final redisVersionValue = redisVersion;
    if (redisVersionValue != null) {
      map['redisVersion'] = redisVersionValue;
    }
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    final reservedIpRangeValue = reservedIpRange;
    if (reservedIpRangeValue != null) {
      map['reservedIpRange'] = reservedIpRangeValue;
    }
    final secondaryIpRangeValue = secondaryIpRange;
    if (secondaryIpRangeValue != null) {
      map['secondaryIpRange'] = secondaryIpRangeValue;
    }
    final suspensionReasonsValue = suspensionReasons;
    if (suspensionReasonsValue != null) {
      map['suspensionReasons'] = Input.mapOptionalInputValue<
              List<InstanceSuspensionReasonsItem>, List<String>>(
          suspensionReasonsValue,
          (value) => Input.encodeList<InstanceSuspensionReasonsItem, String>(
              value, (value) => value.value));
    }
    map['tier'] = Input.mapInputValue<InstanceTier3, String>(
        tier, (value) => value.value);
    final transitEncryptionModeValue = transitEncryptionMode;
    if (transitEncryptionModeValue != null) {
      map['transitEncryptionMode'] =
          Input.mapOptionalInputValue<InstanceTransitEncryptionMode, String>(
              transitEncryptionModeValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceArgs20.fromMap(Map<String, dynamic> map) {
    return InstanceArgs20(
      alternativeLocationId:
          Input.asOptionalInput<String>(map['alternativeLocationId']),
      authEnabled: Input.asOptionalInput<bool>(map['authEnabled']),
      authorizedNetwork:
          Input.asOptionalInput<String>(map['authorizedNetwork']),
      availableMaintenanceVersions: Input.asOptionalInput<List<String>>(
          map['availableMaintenanceVersions']),
      connectMode:
          Input.asOptionalInput<InstanceConnectMode>(map['connectMode']),
      customerManagedKey:
          Input.asOptionalInput<String>(map['customerManagedKey']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      instanceId: Input.asInput<String>(map['instanceId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      maintenancePolicy:
          Input.asOptionalInput<MaintenancePolicy3>(map['maintenancePolicy']),
      maintenanceVersion:
          Input.asOptionalInput<String>(map['maintenanceVersion']),
      memorySizeGb: Input.asInput<int>(map['memorySizeGb']),
      name: Input.asOptionalInput<String>(map['name']),
      persistenceConfig:
          Input.asOptionalInput<PersistenceConfig>(map['persistenceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      readReplicasMode: Input.asOptionalInput<InstanceReadReplicasMode>(
          map['readReplicasMode']),
      redisConfigs:
          Input.asOptionalInput<Map<String, String>>(map['redisConfigs']),
      redisVersion: Input.asOptionalInput<String>(map['redisVersion']),
      replicaCount: Input.asOptionalInput<int>(map['replicaCount']),
      reservedIpRange: Input.asOptionalInput<String>(map['reservedIpRange']),
      secondaryIpRange: Input.asOptionalInput<String>(map['secondaryIpRange']),
      suspensionReasons:
          Input.asOptionalInput<List<InstanceSuspensionReasonsItem>>(
              map['suspensionReasons']),
      tier: Input.asInput<InstanceTier3>(map['tier']),
      transitEncryptionMode:
          Input.asOptionalInput<InstanceTransitEncryptionMode>(
              map['transitEncryptionMode']),
    );
  }
}
