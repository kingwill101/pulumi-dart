// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_maintenance_policy/instance_maintenance_policy3.dart';
import '../instance_persistence_config/instance_persistence_config2.dart';

/// The set of arguments for Instance.
class InstanceArgs13 {
  /// Only applicable to STANDARD_HA tier which protects the instance
  /// against zonal failures by provisioning it across two zones.
  /// If provided, it must be a different zone from the one provided in
  /// [locationId].
  final Input<String>? alternativeLocationId;

  /// Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// instance. If set to "true" AUTH is enabled on the instance.
  /// Default value is "false" meaning AUTH is disabled.
  final Input<bool>? authEnabled;

  /// The full name of the Google Compute Engine network to which the
  /// instance is connected. If left unspecified, the default network
  /// will be used.
  final Input<String>? authorizedNetwork;

  /// The connection mode of the Redis instance.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`.
  final Input<String>? connectMode;

  /// Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// instance. If this is provided, CMEK is enabled.
  final Input<String>? customerManagedKey;
  final Input<bool>? deletionProtection;

  /// An arbitrary and optional user-provided name for the instance.
  final Input<String>? displayName;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The zone where the instance will be provisioned. If not provided,
  /// the service will choose a zone for the instance. For STANDARD_HA tier,
  /// instances will be created across two zones for protection against
  /// zonal failures. If [alternativeLocationId] is also provided, it must
  /// be different from [locationId].
  final Input<String>? locationId;

  /// Maintenance policy for an instance.
  /// Structure is documented below.
  final Input<InstanceMaintenancePolicy3>? maintenancePolicy;

  /// The self service update maintenance version.
  final Input<String>? maintenanceVersion;

  /// Redis memory size in GiB.
  final Input<int> memorySizeGb;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final Input<String>? name;

  /// Persistence configuration for an instance.
  /// Structure is documented below.
  final Input<InstancePersistenceConfig2>? persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
  /// - READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
  /// instance cannot scale up or down the number of replicas.
  /// - READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
  /// can scale up and down the number of replicas.
  /// Possible values are: `READ_REPLICAS_DISABLED`, `READ_REPLICAS_ENABLED`.
  final Input<String>? readReplicasMode;

  /// Redis configuration parameters, according to http://redis.io/topics/config.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs
  final Input<Map<String, String>>? redisConfigs;

  /// The version of Redis software. If not provided, latest supported
  /// version will be used. Please check the API documentation linked
  /// at the top for the latest valid values.
  final Input<String>? redisVersion;

  /// The name of the Redis region of the instance.
  final Input<String>? region;

  /// Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
  /// for a Standard Tier instance, the only valid value is 1 and the default is 1.
  /// The valid value for basic tier is 0 and the default is also 0.
  final Input<int>? replicaCount;

  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  final Input<String>? reservedIpRange;

  /// Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
  /// "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
  /// range associated with the private service access connection, or "auto".
  final Input<String>? secondaryIpRange;

  /// The service tier of the instance. Must be one of these values:
  /// - BASIC: standalone instance
  /// - STANDARD_HA: highly available primary/replica instances
  /// Default value is `BASIC`.
  /// Possible values are: `BASIC`, `STANDARD_HA`.
  final Input<String>? tier;

  /// The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  /// - SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication
  /// Default value is `DISABLED`.
  /// Possible values are: `SERVER_AUTHENTICATION`, `DISABLED`.
  final Input<String>? transitEncryptionMode;

  InstanceArgs13({
    this.alternativeLocationId,
    this.authEnabled,
    this.authorizedNetwork,
    this.connectMode,
    this.customerManagedKey,
    this.deletionProtection,
    this.displayName,
    this.labels,
    this.locationId,
    this.maintenancePolicy,
    this.maintenanceVersion,
    required this.memorySizeGb,
    this.name,
    this.persistenceConfig,
    this.project,
    this.readReplicasMode,
    this.redisConfigs,
    this.redisVersion,
    this.region,
    this.replicaCount,
    this.reservedIpRange,
    this.secondaryIpRange,
    this.tier,
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
    final connectModeValue = connectMode;
    if (connectModeValue != null) {
      map['connectMode'] = connectModeValue;
    }
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationIdValue = locationId;
    if (locationIdValue != null) {
      map['locationId'] = locationIdValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = Input.mapOptionalInputValue<
              InstanceMaintenancePolicy3, Map<String, dynamic>>(
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
      map['persistenceConfig'] = Input.mapOptionalInputValue<
              InstancePersistenceConfig2, Map<String, dynamic>>(
          persistenceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readReplicasModeValue = readReplicasMode;
    if (readReplicasModeValue != null) {
      map['readReplicasMode'] = readReplicasModeValue;
    }
    final redisConfigsValue = redisConfigs;
    if (redisConfigsValue != null) {
      map['redisConfigs'] = redisConfigsValue;
    }
    final redisVersionValue = redisVersion;
    if (redisVersionValue != null) {
      map['redisVersion'] = redisVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final transitEncryptionModeValue = transitEncryptionMode;
    if (transitEncryptionModeValue != null) {
      map['transitEncryptionMode'] = transitEncryptionModeValue;
    }
    return map;
  }

  factory InstanceArgs13.fromMap(Map<String, dynamic> map) {
    return InstanceArgs13(
      alternativeLocationId:
          Input.asOptionalInput<String>(map['alternativeLocationId']),
      authEnabled: Input.asOptionalInput<bool>(map['authEnabled']),
      authorizedNetwork:
          Input.asOptionalInput<String>(map['authorizedNetwork']),
      connectMode: Input.asOptionalInput<String>(map['connectMode']),
      customerManagedKey:
          Input.asOptionalInput<String>(map['customerManagedKey']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      locationId: Input.asOptionalInput<String>(map['locationId']),
      maintenancePolicy: Input.asOptionalInput<InstanceMaintenancePolicy3>(
          map['maintenancePolicy']),
      maintenanceVersion:
          Input.asOptionalInput<String>(map['maintenanceVersion']),
      memorySizeGb: Input.asInput<int>(map['memorySizeGb']),
      name: Input.asOptionalInput<String>(map['name']),
      persistenceConfig: Input.asOptionalInput<InstancePersistenceConfig2>(
          map['persistenceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      readReplicasMode: Input.asOptionalInput<String>(map['readReplicasMode']),
      redisConfigs:
          Input.asOptionalInput<Map<String, String>>(map['redisConfigs']),
      redisVersion: Input.asOptionalInput<String>(map['redisVersion']),
      region: Input.asOptionalInput<String>(map['region']),
      replicaCount: Input.asOptionalInput<int>(map['replicaCount']),
      reservedIpRange: Input.asOptionalInput<String>(map['reservedIpRange']),
      secondaryIpRange: Input.asOptionalInput<String>(map['secondaryIpRange']),
      tier: Input.asOptionalInput<String>(map['tier']),
      transitEncryptionMode:
          Input.asOptionalInput<String>(map['transitEncryptionMode']),
    );
  }
}
